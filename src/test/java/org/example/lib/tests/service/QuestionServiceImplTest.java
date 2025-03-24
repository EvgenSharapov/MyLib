package org.example.lib.tests.service;

import org.aspectj.lang.ProceedingJoinPoint;
import org.example.lib.aspect.RetryAspect;
import org.example.lib.config.TestConfig;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.mapper.QuestionMapper;
import org.example.lib.model.Difficulty;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.example.lib.repository.QuestionRepository;
import org.example.lib.service.question.QuestionServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.example.lib.handler.exeptions.question.QuestionNotFoundException;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Configuration;
import org.springframework.retry.annotation.EnableRetry;
import org.springframework.retry.annotation.Retryable;
import org.springframework.retry.backoff.FixedBackOffPolicy;
import org.springframework.retry.policy.SimpleRetryPolicy;
import org.springframework.retry.support.RetryTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.lang.reflect.Field;
import java.util.*;

import static org.example.lib.tests.utils.CreateEntityForTests.createQuestion;
import static org.example.lib.tests.utils.CreateEntityForTests.createQuestionRequestDTO;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

//@SpringBootTest
@ExtendWith(MockitoExtension.class)
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = TestConfig.class)
public class QuestionServiceImplTest {

    @Mock
    private QuestionRepository questionRepo;

    @Mock
    private QuestionMapper questionMapper;

    @InjectMocks
    private QuestionServiceImpl questionService;

    private Map<UUID, QuestionRequestDTO> questionCache;

    @BeforeEach
    void setUp() throws NoSuchFieldException, IllegalAccessException {
        questionCache = new HashMap<>();
        questionService = new QuestionServiceImpl(questionRepo, questionMapper);

        Field cacheField = QuestionServiceImpl.class.getDeclaredField("questionCache");
        cacheField.setAccessible(true);
        cacheField.set(questionService, questionCache);
    }


    @Test
    void findById_ShouldReturnQuestionFromCache() {
        QuestionRequestDTO cachedQuestion = createQuestionRequestDTO();
        UUID id = cachedQuestion.id();
        questionCache.put(id, cachedQuestion);

        QuestionRequestDTO result = questionService.findById(id);

        assertNotNull(result);
        assertEquals(cachedQuestion, result);
        verify(questionRepo, never()).findById(id);
    }

    @Test
    void findById_ShouldReturnQuestionAndCacheIt() {
        UUID questionId = UUID.randomUUID();
        Question question = createQuestion();
        question.setId(questionId);
        QuestionRequestDTO expectedDto = createQuestionRequestDTO();

        when(questionRepo.findById(questionId)).thenReturn(Optional.of(question));
        when(questionMapper.mapToQuestionRequestDTO(question)).thenReturn(expectedDto);

        QuestionRequestDTO result = questionService.findById(questionId);
        QuestionRequestDTO cachedResult = questionService.findById(questionId);

        assertEquals(expectedDto, result);
        assertEquals(expectedDto, cachedResult);
        verify(questionRepo, times(1)).findById(questionId);
        verify(questionMapper, times(1)).mapToQuestionRequestDTO(question);
    }

    @Test
    void findById_ShouldThrowQuestionNotFoundException() {
        UUID nonExistentId = UUID.randomUUID();
        when(questionRepo.findById(nonExistentId)).thenReturn(Optional.empty());

        assertThrows(QuestionNotFoundException.class, () -> questionService.findById(nonExistentId));
        verify(questionRepo, times(1)).findById(nonExistentId);
    }

    @Test
    void findById_ShouldReturnCachedValue() {
        UUID questionId = UUID.randomUUID();
        QuestionRequestDTO cachedDto = createQuestionRequestDTO();
        questionCache.put(questionId, cachedDto);

        QuestionRequestDTO result = questionService.findById(questionId);

        assertEquals(cachedDto, result);
        verify(questionRepo, never()).findById(any());
    }

    @Test
    void findById_ShouldReturnQuestionFromRepo() {
        Question question = createQuestion();
        QuestionRequestDTO dto = createQuestionRequestDTO();
        UUID id = dto.id();

        when(questionRepo.findById(id)).thenReturn(Optional.of(question));
        when(questionMapper.mapToQuestionRequestDTO(question)).thenReturn(dto);

        QuestionRequestDTO result = questionService.findById(id);

        assertNotNull(result);
        assertEquals(dto, result);
        verify(questionRepo, times(1)).findById(id);
    }

    @Test
    void findById_ShouldThrowExceptionWhenQuestionNotFound() {
        UUID id = UUID.randomUUID();
        when(questionRepo.findById(id)).thenReturn(Optional.empty());

        assertThrows(QuestionNotFoundException.class, () -> questionService.findById(id));
    }

    @Test
    void getAll_ShouldReturnAllQuestions() {
        List<Question> questions = List.of(
                createQuestion(),
                createQuestion()
        );
        List<QuestionRequestDTO> dtos = List.of(
                createQuestionRequestDTO(),
                createQuestionRequestDTO()
        );

        when(questionRepo.findAll()).thenReturn(questions);
        when(questionMapper.mapToQuestionRequestDTO(any(Question.class))).thenReturn(dtos.get(0), dtos.get(1));

        List<QuestionRequestDTO> result = questionService.getAll();

        assertNotNull(result);
        assertEquals(2, result.size());
        assertEquals(dtos, result);
    }

    @Test
    void save_ShouldSaveQuestionAndUpdateCache() {
        Question question = createQuestion();
        question.setId(null);
        Question savedQuestion = createQuestion();
        QuestionRequestDTO dto = new QuestionRequestDTO(savedQuestion.getId(), "Content",
                TopicArea.TEST, "Table of Content", Difficulty.EASY);

        when(questionRepo.save(question)).thenReturn(savedQuestion);
        when(questionMapper.mapToQuestionRequestDTO(any(Question.class))).thenReturn(dto);

        QuestionRequestDTO result = questionService.save(question);

        assertNotNull(result);
        assertEquals(dto, result);
        verify(questionRepo, times(1)).save(question);
    }

    @Test
    void delete_ShouldRemoveQuestionFromRepoAndCache() {
        UUID id = UUID.randomUUID();
        doNothing().when(questionRepo).deleteById(id);

        questionService.delete(id);

        verify(questionRepo, times(1)).deleteById(id);
    }

    @Test
    void getRandomQuestion_ShouldReturnRandomQuestionFromCache() {
        QuestionRequestDTO question1 = createQuestionRequestDTO();
        QuestionRequestDTO question2 = createQuestionRequestDTO();
        questionCache.put(question1.id(), question1);
        questionCache.put(question2.id(), question2);

        QuestionRequestDTO result = questionService.getRandomQuestion();

        assertNotNull(result);
        assertTrue(questionCache.containsValue(result));
    }

    @Test
    void getRandomQuestion_ShouldThrowExceptionWhenCacheIsEmpty() {
        questionCache.clear();

        assertThrows(QuestionNotFoundException.class, () -> questionService.getRandomQuestion());
    }

}