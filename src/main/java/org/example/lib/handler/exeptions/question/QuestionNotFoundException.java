package org.example.lib.handler.exeptions.question;

import org.example.lib.handler.exeptions.NotFoundException;
import org.example.lib.model.TopicArea;

import java.util.UUID;

public class QuestionNotFoundException extends NotFoundException {
    public QuestionNotFoundException(UUID id) {
        super("Question not found by id: " + id);
    }

    public QuestionNotFoundException(String text){
        super(text);
    }
    public QuestionNotFoundException(TopicArea area){
        super("No questions found for topic area: " + area);
    }

}