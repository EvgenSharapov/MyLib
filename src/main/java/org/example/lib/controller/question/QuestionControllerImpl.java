package org.example.lib.controller.question;


import lombok.RequiredArgsConstructor;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.model.Question;
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
    public QuestionRequestDTO createQuestion(Question question) {
        return questionService.save(question);
    }

    @Override
    public void deleteAddress(UUID id) {
        questionService.delete(id);
    }
}