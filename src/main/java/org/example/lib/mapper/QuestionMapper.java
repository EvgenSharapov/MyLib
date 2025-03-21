package org.example.lib.mapper;


import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.model.Question;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class QuestionMapper {

    public QuestionRequestDTO mapToQuestionRequestDTO(Question question) {
        return QuestionRequestDTO.builder()
                .id(question.getId())
                .content(question.getContent())
                .tableOfContent(question.getTableOfContent())
                .topicArea(question.getTopicArea())
                .difficulty(question.getDifficulty())
                .build();
    }

    public List<QuestionRequestDTO> mapToQuestionRequestDTO(List<Question> questions) {
        return questions.stream()
                .map(this::mapToQuestionRequestDTO)
                .collect(Collectors.toList());
    }
}
