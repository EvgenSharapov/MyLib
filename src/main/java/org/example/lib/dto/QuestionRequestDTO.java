package org.example.lib.dto;

import lombok.Builder;
import org.example.lib.model.TopicArea;


@Builder
public record QuestionRequestDTO (

        String content,
        TopicArea topicArea,
        String tableOfContent

){
}