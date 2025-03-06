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



    @GetMapping("/all")
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
    public void deleteAddress(UUID id) {
        questionService.delete(id);
    }

    @GetMapping("/titles")
    public List<String> getAllTopicTitles() {
        return questionService.getAllTopicTitles();
    }

    @GetMapping("/by-area/{topicArea}")
    public List<Question> getTopicsByArea(@PathVariable TopicArea topicArea) {
        return questionService.getQuestionsByArea(topicArea);
    }

    @GetMapping("/random")
    public Question getRandomTopic() {
        return questionService.getRandomQuestion();
    }


}