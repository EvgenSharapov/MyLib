package org.example.lib.tests.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.example.lib.controller.question.QuestionController;
import org.example.lib.controller.question.QuestionControllerImpl;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.handler.GlobalExceptionHandler;
import org.example.lib.handler.exeptions.question.QuestionNotFoundException;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.example.lib.service.question.QuestionService;
import org.example.lib.tests.utils.CreateEntityForTests;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

import static org.example.lib.tests.utils.CreateEntityForTests.createQuestion;
import static org.example.lib.tests.utils.CreateEntityForTests.createQuestionRequestDTO;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;


@ExtendWith(MockitoExtension.class)
@Import(GlobalExceptionHandler.class)
public class QuestionControllerImplTest {

    private MockMvc mockMvc;

    @Mock
    private QuestionService questionService;

    @InjectMocks
    private QuestionControllerImpl questionController;

    private final ObjectMapper objectMapper = new ObjectMapper();


    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(questionController)
                .setControllerAdvice(new GlobalExceptionHandler()) // Подключаем GlobalExceptionHandler
                .build();
    }

    @Test
    void getAllQuestions_ShouldReturnListOfQuestions() throws Exception {
        QuestionRequestDTO question = createQuestionRequestDTO();
        UUID id = question.id();
        List<QuestionRequestDTO> questions = Collections.singletonList(question);

        when(questionService.getAll()).thenReturn(questions);

        mockMvc.perform(get("/api/topics/all")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id").value(id.toString()))
                .andExpect(jsonPath("$[0].content").value("Content"))
                .andExpect(jsonPath("$[0].topicArea").value("TEST"))
                .andExpect(jsonPath("$[0].tableOfContent").value("Table of Content"));
    }

    @Test
    void getQuestionById_ShouldReturnQuestion() throws Exception {
        QuestionRequestDTO question = createQuestionRequestDTO();
        UUID id = question.id();

        when(questionService.findById(id)).thenReturn(question);

        mockMvc.perform(get("/api/topics/{id}", id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(id.toString()))
                .andExpect(jsonPath("$.content").value("Content"))
                .andExpect(jsonPath("$.topicArea").value("TEST"))
                .andExpect(jsonPath("$.tableOfContent").value("Table of Content"));
    }

    @Test
    void createQuestion_ShouldReturnCreatedQuestion() throws Exception {
        Question question = createQuestion();

        QuestionRequestDTO createdQuestion = createQuestionRequestDTO();
        UUID id = createdQuestion.id();

        when(questionService.save(any(Question.class))).thenReturn(createdQuestion);

        mockMvc.perform(post("/api/topics")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(question)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(id.toString()))
                .andExpect(jsonPath("$.content").value("Content"))
                .andExpect(jsonPath("$.topicArea").value("TEST"))
                .andExpect(jsonPath("$.tableOfContent").value("Table of Content"));
    }

    @Test
    void deleteQuestion_ShouldReturnNoContent() throws Exception {
        UUID id = UUID.randomUUID();

        mockMvc.perform(delete("/api/topics/{id}", id))
                .andExpect(status().isNoContent());
    }

    @Test
    void getAllQuestionThemes_ShouldReturnListOfThemes() throws Exception {
        List<String> themes = Collections.singletonList("Theme 1");

        when(questionService.getAllTopicTitles()).thenReturn(themes);

        mockMvc.perform(get("/api/topics/titles")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0]").value("Theme 1"));
    }

    @Test
    void getQuestionsByArea_ShouldReturnListOfQuestions() throws Exception {
        QuestionRequestDTO question = createQuestionRequestDTO();
        List<QuestionRequestDTO> questions = Collections.singletonList(question);

        when(questionService.getQuestionsByArea(TopicArea.TEST)).thenReturn(questions);

        mockMvc.perform(get("/api/topics/by-area/{topicArea}", TopicArea.TEST)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].content").value("Content"))
                .andExpect(jsonPath("$[0].topicArea").value("TEST"))
                .andExpect(jsonPath("$[0].tableOfContent").value("Table of Content"));
    }

    @Test
    void getRandomQuestion_ShouldReturnRandomQuestion() throws Exception {
        QuestionRequestDTO question = createQuestionRequestDTO();

        when(questionService.getRandomQuestion()).thenReturn(question);

        mockMvc.perform(get("/api/topics/random")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.content").value("Content"))
                .andExpect(jsonPath("$.topicArea").value("TEST"))
                .andExpect(jsonPath("$.tableOfContent").value("Table of Content"));
    }

    @Test
    void searchQuestionsByTheme_ShouldReturnListOfQuestions() throws Exception {
        QuestionRequestDTO question = createQuestionRequestDTO();
        List<QuestionRequestDTO> questions = Collections.singletonList(question);

        when(questionService.findThemeByText("query")).thenReturn(questions);

        mockMvc.perform(get("/api/topics/search/theme")
                        .param("query", "query")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].content").value("Content"))
                .andExpect(jsonPath("$[0].topicArea").value("TEST"))
                .andExpect(jsonPath("$[0].tableOfContent").value("Table of Content"));
    }

    @Test
    void searchQuestionsByContent_ShouldReturnListOfQuestions() throws Exception {
        QuestionRequestDTO question = createQuestionRequestDTO();
        List<QuestionRequestDTO> questions = Collections.singletonList(question);

        when(questionService.findContentByText("query")).thenReturn(questions);

        mockMvc.perform(get("/api/topics/search/content")
                        .param("query", "query")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].content").value("Content"))
                .andExpect(jsonPath("$[0].topicArea").value("TEST"))
                .andExpect(jsonPath("$[0].tableOfContent").value("Table of Content"));
    }

    @Test
    void getQuestionById_ShouldReturnNotFound() throws Exception {
        UUID id = UUID.randomUUID();

        when(questionService.findById(id)).thenThrow(new QuestionNotFoundException(id));

        mockMvc.perform(get("/api/topics/{id}", id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(jsonPath("$.message").value("Question not found by id: " + id));
    }

    @Test
    void createQuestion_ShouldReturnBadRequest() throws Exception {
        Question invalidQuestion = new Question();
        invalidQuestion.setId(null);
        invalidQuestion.setContent(null);
        invalidQuestion.setTopicArea(null);
        invalidQuestion.setTableOfContent(null);

        mockMvc.perform(post("/api/topics")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(invalidQuestion)))
                .andExpect(status().isBadRequest());
    }

    @Test
    void searchQuestionsByTheme_ShouldReturnBadRequest() throws Exception {
        String emptyQuery = "";

        mockMvc.perform(get("/api/topics/search/theme")
                        .param("query", emptyQuery)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }

    @Test
    void searchQuestionsByContent_ShouldReturnBadRequest() throws Exception {
        String emptyQuery = "";

        mockMvc.perform(get("/api/topics/search/content")
                        .param("query", emptyQuery)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }

    @Test
    void getRandomQuestion_ShouldReturnNotFound_WhenCacheIsEmpty() throws Exception {
        when(questionService.getRandomQuestion()).thenThrow(new QuestionNotFoundException("Нет доступных тем"));

        mockMvc.perform(get("/api/topics/random")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(jsonPath("$.message").value("Нет доступных тем"));
    }

    @Test
    void getQuestionsByArea_ShouldReturnNotFound() throws Exception {
        TopicArea topicArea = TopicArea.TEST;

        when(questionService.getQuestionsByArea(topicArea)).thenReturn(Collections.emptyList());

        mockMvc.perform(get("/api/topics/by-area/{topicArea}", topicArea)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound());
    }

    @Test
    void getQuestionById_ShouldReturnBadRequest() throws Exception {
        String invalidId = "invalid-uuid";

        mockMvc.perform(get("/api/topics/{id}", invalidId)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }

    @Test
    void getQuestionsByArea_ShouldReturnBadRequest() throws Exception {
        String invalidTopicArea = "INVALID_AREA";

        mockMvc.perform(get("/api/topics/by-area/{topicArea}", invalidTopicArea)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }


    @Test
    public void testGetRandomQuestion_WithDifficulty() throws Exception {
        QuestionRequestDTO mockQuestion = CreateEntityForTests.createQuestionRequestDTO();
        when(questionService.findRandomByDifficulty("EASY")).thenReturn(mockQuestion);

        mockMvc.perform(get("/api/topics/random").param("difficulty", "EASY"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(mockQuestion.id().toString()))
                .andExpect(jsonPath("$.content").value(mockQuestion.content()))
                .andExpect(jsonPath("$.topicArea").value(mockQuestion.topicArea().toString()))
                .andExpect(jsonPath("$.tableOfContent").value(mockQuestion.tableOfContent()))
                .andExpect(jsonPath("$.difficulty").value(mockQuestion.difficulty().toString()));
    }

    @Test
    public void testGetRandomQuestion_WithoutDifficulty() throws Exception {
        QuestionRequestDTO mockQuestion = CreateEntityForTests.createQuestionRequestDTO();
        when(questionService.getRandomQuestion()).thenReturn(mockQuestion);

        mockMvc.perform(get("/api/topics/random"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(mockQuestion.id().toString()))
                .andExpect(jsonPath("$.content").value(mockQuestion.content()))
                .andExpect(jsonPath("$.topicArea").value(mockQuestion.topicArea().toString()))
                .andExpect(jsonPath("$.tableOfContent").value(mockQuestion.tableOfContent()))
                .andExpect(jsonPath("$.difficulty").value(mockQuestion.difficulty().toString()));
    }

    @Test
    public void testGetRandomQuestion_InvalidDifficulty() throws Exception {
        when(questionService.findRandomByDifficulty("INVALID")).thenThrow(new IllegalArgumentException("Invalid difficulty"));

        mockMvc.perform(get("/api/topics/random").param("difficulty", "INVALID"))
                .andExpect(status().isBadRequest());
    }

    @Test
    public void testGetRandomQuestion_ServiceThrowsException() throws Exception {
        when(questionService.getRandomQuestion()).thenThrow(new QuestionNotFoundException("Service failure"));

        mockMvc.perform(get("/api/topics/random"))
                .andExpect(status().isNotFound());
    }

}

