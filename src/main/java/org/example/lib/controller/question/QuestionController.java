package org.example.lib.controller.question;


import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.model.Question;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/topics")
public interface QuestionController {

    @GetMapping
    List<QuestionRequestDTO> getAllQuestions();

    @GetMapping("/{id}")
    QuestionRequestDTO getQuestionById(
            @PathVariable UUID id);

    @PostMapping
    QuestionRequestDTO createQuestion(
            @RequestBody Question question);

    @DeleteMapping("/{id}")
    void deleteAddress(
            @PathVariable UUID id);


}
