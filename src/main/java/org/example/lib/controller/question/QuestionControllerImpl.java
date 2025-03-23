package org.example.lib.controller.question;


import lombok.RequiredArgsConstructor;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.handler.ErrorResponses;
import org.example.lib.handler.exeptions.question.QuestionNotFoundException;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.example.lib.service.question.QuestionService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

@RestController
@RequiredArgsConstructor
public class QuestionControllerImpl implements QuestionController{

private final QuestionService questionService;


    @Override
    public List<QuestionRequestDTO> getAllQuestions() {
        return questionService.getAll();
    }

    @Override
    public QuestionRequestDTO getQuestionById(UUID id) {
        return questionService.findById(id);
    }

    @Override
    public QuestionRequestDTO createQuestion(@RequestBody Question question) {
        if(question.getTableOfContent() == null||question.getContent()==null||question.getTopicArea()==null){
            throw new IllegalArgumentException("Question not found");
        }

        return questionService.save(question);
    }

    @Override
    public void deleteQuestion(UUID id) {
        questionService.delete(id);
    }

    @Override
    public QuestionRequestDTO saveQuestion(Question quest, UUID id) {
        Question question = new Question();
        question.setId(id);
        question.setContent(quest.getContent());
        question.setDifficulty(quest.getDifficulty());
        question.setTableOfContent(quest.getTableOfContent());
        question.setTopicArea(quest.getTopicArea());
        return questionService.save(question);
    }

    @Override
    public List<String> getAllQuestionThemes() {
        return questionService.getAllTopicTitles();
    }

    @Override
    public List<QuestionRequestDTO> getQuestionsByArea(@PathVariable TopicArea topicArea) {
        List<QuestionRequestDTO> questions = questionService.getQuestionsByArea(topicArea);
        if (questions.isEmpty()) {
            throw new QuestionNotFoundException(topicArea);
        }
        return questions;
    }


    @GetMapping("/random")
    public QuestionRequestDTO getRandomQuestion(@RequestParam(required = false) String difficulty) {
        if (difficulty != null) {
            return questionService.findRandomByDifficulty(difficulty);
        } else {
            return questionService.getRandomQuestion();
        }
    }

    @Override
    public List<QuestionRequestDTO> searchQuestionsByTheme(String query) {
        if (query == null || query.trim().isEmpty()) {
            throw new IllegalArgumentException("Query parameter cannot be empty");
        }
        return questionService.findThemeByText(query);
    }

    @Override
    public List<QuestionRequestDTO> searchQuestionsByContent(String query) {
        if (query == null || query.trim().isEmpty()) {
            throw new IllegalArgumentException("Query parameter cannot be empty");
        }
        return questionService.findContentByText(query);
    }

    @Override
    public List<String> getAllTopicAreas() {
        return Arrays.stream(TopicArea.values())
                .map(Enum::name)
                .toList();
    }


    @ExceptionHandler(QuestionNotFoundException.class)
    public ResponseEntity<ErrorResponses> handleQuestionNotFoundException(QuestionNotFoundException ex) {
        ErrorResponses errorResponse = new ErrorResponses(ex.getMessage());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    public ResponseEntity<ErrorResponses> handleIllegalArgumentException(IllegalArgumentException ex) {
        ErrorResponses errorResponse = new ErrorResponses(ex.getMessage());
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
    }





}