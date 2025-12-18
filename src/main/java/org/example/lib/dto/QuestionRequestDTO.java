package org.example.lib.dto;

import lombok.Builder;
import org.example.lib.model.enums.Difficulty;
import org.example.lib.model.enums.TopicArea;

import java.util.UUID;


@Builder
public record QuestionRequestDTO (
        UUID id,
        String content,
        TopicArea topicArea,
        String tableOfContent,
        Difficulty difficulty

){
    @Override
    public String toString() {
        return "Theme: " + tableOfContent;
    }
}