package org.example.lib.service.question;

import lombok.RequiredArgsConstructor;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.handler.exeptions.QuestionNotFoundException;
import org.example.lib.mapper.QuestionMapper;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.example.lib.repository.QuestionRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class QuestionServiceImpl implements QuestionService{

    private final QuestionRepository questionRepo;
    private final QuestionMapper questionMapper;


    @Override
    public QuestionRequestDTO findById(UUID id) {
        Question question =questionRepo.findById(id).orElseThrow(
                () -> new QuestionNotFoundException(id));
        return questionMapper.mapToQuestionRequestDTO(question);
    }

    @Override
    public List<QuestionRequestDTO> getAll() {
        List<Question>questions =questionRepo.findAll();
        return questionMapper.mapToQuestionRequestDTO(questions);
    }

    @Override
    public QuestionRequestDTO save(Question question) {
        questionRepo.save(question);
        return questionMapper.mapToQuestionRequestDTO(question);
    }

    @Override
    public void delete(UUID id) {
        questionRepo.deleteById(id);

    }

    @Override
    public List<String> getAllTopicTitles() {
        return questionRepo.findAll().stream()
                .map(Question::getTableOfContent)
                .toList();
    }

    @Override
    public List<QuestionRequestDTO> getQuestionsByArea(TopicArea topicArea) {
        List<Question>questions =questionRepo.findByTopicArea(topicArea);
        return questionMapper.mapToQuestionRequestDTO(questions);
    }

    @Override
    public QuestionRequestDTO getRandomQuestion() {
        List<Question> questions = questionRepo.findAll();
        if (questions.isEmpty()) {
            throw new RuntimeException("Нет доступных тем");
        }
        Random random = new Random();
        Question question = questions.get(random.nextInt(questions.size()));
        return questionMapper.mapToQuestionRequestDTO(question);
    }

    @Override
    public List<QuestionRequestDTO> findThemeByText(String text) {
        List<Question>questions =questionRepo.findByTableOfContentContainingIgnoreCase(text);
        return questionMapper.mapToQuestionRequestDTO(questions);
    }

    @Override
    public List<QuestionRequestDTO> findContentByText(String text) {
        List<Question>questions =questionRepo.findByContentContainingIgnoreCase(text);
        return questionMapper.mapToQuestionRequestDTO(questions);
    }

}
