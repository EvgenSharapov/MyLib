package org.example.lib.controller.question;


import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/topics")
public interface QuestionController {


    @GetMapping("/all")
    List<QuestionRequestDTO> getAllQuestions();

    @GetMapping("/{id}")
    QuestionRequestDTO getQuestionById(
            @PathVariable UUID id);

    @PostMapping
    QuestionRequestDTO createQuestion(
            @RequestBody Question question);

    @DeleteMapping("/{id}")
    void deleteQuestion(
            @PathVariable UUID id);

    @GetMapping("/titles")
    List<String> getAllQuestionThemes();

    @GetMapping("/by-area/{topicArea}")
    List<QuestionRequestDTO> getQuestionsByArea(@PathVariable TopicArea topicArea);

    @GetMapping("/random")
    QuestionRequestDTO getRandomQuestion();

    @GetMapping("/search/theme")
    List<QuestionRequestDTO> searchQuestionsByTheme(@RequestParam String query);

    @GetMapping("/search/content")
    List<QuestionRequestDTO> searchQuestionsByContent(@RequestParam String query);
}
