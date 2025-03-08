package org.example.lib.tests.service;

import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.mapper.QuestionMapper;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.example.lib.repository.QuestionRepository;
import org.example.lib.service.question.QuestionServiceImpl;
import org.example.lib.tests.utils.CreateEntityForTests;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.example.lib.handler.exeptions.question.QuestionNotFoundException;

import java.lang.reflect.Field;
import java.util.*;

import static org.example.lib.tests.utils.CreateEntityForTests.createQuestion;
import static org.example.lib.tests.utils.CreateEntityForTests.createQuestionRequestDTO;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
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

        // Используем рефлексию, чтобы установить questionCache в сервисе
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
                TopicArea.TEST, "Table of Content");

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