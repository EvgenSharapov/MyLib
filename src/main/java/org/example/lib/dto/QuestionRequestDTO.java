package org.example.lib.dto;

import lombok.Builder;
import org.example.lib.model.TopicArea;


@Builder
public record QuestionRequestDTO (
        String theme,
        String content,
        TopicArea topicArea

){
}