package org.example.lib.service.question;

import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;

import java.util.List;
import java.util.UUID;

public interface QuestionService {

    QuestionRequestDTO findById(UUID id);

    List<QuestionRequestDTO> getAll();

    QuestionRequestDTO save(Question question);

    void delete(UUID id);

    List<String> getAllTopicTitles();

    List<QuestionRequestDTO> getQuestionsByArea(TopicArea topicArea);

    QuestionRequestDTO findRandomByDifficulty(String difficulty);

    List<QuestionRequestDTO> findThemeByText(String text);

    List<QuestionRequestDTO> findContentByText(String text);

    QuestionRequestDTO getRandomQuestion();



}
