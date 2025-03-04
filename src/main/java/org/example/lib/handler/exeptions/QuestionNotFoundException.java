package org.example.lib.handler.exeptions;

import java.util.UUID;

public class QuestionNotFoundException extends NotFoundException {
    public QuestionNotFoundException(UUID id) {
        super("Question not found by id: " + id);
    }
}