package org.example.lib.service.question;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import lombok.RequiredArgsConstructor;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.handler.exeptions.question.QuestionNotFoundException;
import org.example.lib.mapper.QuestionMapper;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.example.lib.repository.QuestionRepository;
import org.springframework.retry.annotation.Backoff;
import org.springframework.retry.annotation.Retryable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor

public class QuestionServiceImpl implements QuestionService{

    private final QuestionRepository questionRepo;
    private final QuestionMapper questionMapper;

    private Map<UUID, QuestionRequestDTO> questionCache;

    @PostConstruct
    public void init() {
        System.out.println("Initializing QuestionService...");
        questionCache = new HashMap<>();
        loadAllQuestionsIntoCache();
    }

    private void loadAllQuestionsIntoCache() {
        List<Question> questions = questionRepo.findAll();
        questions.forEach(question ->
                questionCache.put(question.getId(), questionMapper.mapToQuestionRequestDTO(question))
        );
        System.out.println("Loaded " + questionCache.size() + " questions into cache.");
    }

    @PreDestroy
    public void cleanup() {
        System.out.println("Destroying QuestionService...");
        questionCache.clear();
        System.out.println("Cache cleared.");
    }

    @Override
    @Retryable(
            maxAttempts = 5,
            backoff = @Backoff(delay = 1000),
            retryFor = RuntimeException.class)
    public QuestionRequestDTO findById(UUID id) {
        if (questionCache.containsKey(id)) {
            return questionCache.get(id);
        }
        Question question = questionRepo.findById(id).orElseThrow(
                () -> new QuestionNotFoundException(id));
        QuestionRequestDTO dto = questionMapper.mapToQuestionRequestDTO(question);
        questionCache.put(id, dto);
        return dto;
    }

    @Override
    @Retryable(backoff = @Backoff(delay = 1000))
    public List<QuestionRequestDTO> getAll() {
        List<Question>questions =questionRepo.findAll();
        return questions.stream()
                .filter(Objects::nonNull)
                .map(questionMapper::mapToQuestionRequestDTO)
                .collect(Collectors.toList());
    }

    @Override
    @Transactional
    public QuestionRequestDTO save(Question question) {
        question = questionRepo.save(question);
        QuestionRequestDTO dto = questionMapper.mapToQuestionRequestDTO(question);
        questionCache.put(question.getId(), dto);
        return dto;
    }

    @Override
    @Transactional
    public void delete(UUID id) {
        questionRepo.deleteById(id);
        questionCache.remove(id);

    }

    @Override
    @Retryable(backoff = @Backoff(delay = 1000))
    public List<String> getAllTopicTitles() {
        return questionRepo.findAll().stream()
                .map(Question::getTableOfContent)
                .toList();
    }

    @Override
    @Retryable(backoff = @Backoff(delay = 1000))
    public List<QuestionRequestDTO> getQuestionsByArea(TopicArea topicArea) {
        List<Question>questions =questionRepo.findByTopicArea(topicArea);
        return questionMapper.mapToQuestionRequestDTO(questions);
    }

    @Override
    @Retryable(backoff = @Backoff(delay = 1000))
    public QuestionRequestDTO getRandomQuestion() {
        if (questionCache.isEmpty()) {
            throw new QuestionNotFoundException("Нет доступных тем");
        }
        List<QuestionRequestDTO> questions = new ArrayList<>(questionCache.values());
        return questions.get(ThreadLocalRandom.current().nextInt(questions.size()));
    }

    @Override
    @Retryable(backoff = @Backoff(delay = 1000))
    public QuestionRequestDTO findRandomByDifficulty(String difficulty) {
        if (questionCache.isEmpty()) {
            throw new QuestionNotFoundException("Нет доступных тем");
        }

        List<QuestionRequestDTO> filteredQuestions = questionCache.values().stream()
                .filter(question -> difficulty == null || difficulty.equalsIgnoreCase(String.valueOf(question.difficulty())))
                .toList();

        if (filteredQuestions.isEmpty()) {
            throw new QuestionNotFoundException("Нет доступных вопросов для выбранного уровня сложности: " + difficulty);
        }

        return filteredQuestions.get(ThreadLocalRandom.current().nextInt(filteredQuestions.size()));
    }



    @Override
    @Retryable(backoff = @Backoff(delay = 1000))
    public List<QuestionRequestDTO> findThemeByText(String text) {
        List<Question>questions =questionRepo.findByTableOfContentContainingIgnoreCase(text);
        return questionMapper.mapToQuestionRequestDTO(questions);
    }

    @Override
    @Retryable(backoff = @Backoff(delay = 1000))
    public List<QuestionRequestDTO> findContentByText(String text) {
        List<Question>questions =questionRepo.findByContentContainingIgnoreCase(text);
        return questionMapper.mapToQuestionRequestDTO(questions);
    }

}
