package org.example.lib.dto;

import lombok.Builder;
import org.example.lib.model.TopicArea;

import java.util.UUID;


@Builder
public record QuestionRequestDTO (
        UUID id,
        String content,
        TopicArea topicArea,
        String tableOfContent

){
    @Override
    public String toString() {
        return "Theme: " + tableOfContent;
    }
}