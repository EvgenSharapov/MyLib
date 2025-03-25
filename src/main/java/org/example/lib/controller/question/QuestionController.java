package org.example.lib.controller.question;


import jakarta.validation.Valid;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/topics")
@Validated
public interface QuestionController {


    @GetMapping("/all")
    List<QuestionRequestDTO> getAllQuestions();

    @GetMapping("/{id}")
    QuestionRequestDTO getQuestionById(
            @PathVariable UUID id);

    @PostMapping
    QuestionRequestDTO createQuestion(@Valid
            @RequestBody Question question);

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    void deleteQuestion(
            @PathVariable UUID id);
    @PutMapping("/{id}")
    QuestionRequestDTO saveQuestion(@Valid @RequestBody Question question,
            @PathVariable UUID id);

    @GetMapping("/titles")
    List<String> getAllQuestionThemes();

    @GetMapping("/by-area/{topicArea}")
    List<QuestionRequestDTO> getQuestionsByArea(@Valid @PathVariable TopicArea topicArea);

    @GetMapping("/search/theme")
    List<QuestionRequestDTO> searchQuestionsByTheme(@RequestParam String query);

    @GetMapping("/search/content")
    List<QuestionRequestDTO> searchQuestionsByContent(@RequestParam String query);

    @GetMapping("/topic-areas")
    List<String> getAllTopicAreas();

    @GetMapping("/random")
    QuestionRequestDTO getRandomQuestion(@Valid @RequestParam(required = false) String difficulty);
}
