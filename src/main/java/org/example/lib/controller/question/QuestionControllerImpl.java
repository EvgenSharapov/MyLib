package org.example.lib.controller.question;


import ch.qos.logback.core.model.Model;
import lombok.RequiredArgsConstructor;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.example.lib.service.question.QuestionService;
import org.springframework.web.bind.annotation.*;

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
        return questionService.save(question);
    }

    @Override
    public void deleteQuestion(UUID id) {
        questionService.delete(id);
    }

    @Override
    public List<String> getAllQuestionThemes() {
        return questionService.getAllTopicTitles();
    }

    @Override
    public List<QuestionRequestDTO> getQuestionsByArea(@PathVariable TopicArea topicArea) {
        return questionService.getQuestionsByArea(topicArea);
    }

    @Override
    public QuestionRequestDTO getRandomQuestion() {
        return questionService.getRandomQuestion();
    }

    @Override
    public List<QuestionRequestDTO> searchQuestionsByTheme(String query) {
        return questionService.findThemeByText(query);
    }

    @Override
    public List<QuestionRequestDTO> searchQuestionsByContent(String query) {
        return questionService.findContentByText(query);
    }

}