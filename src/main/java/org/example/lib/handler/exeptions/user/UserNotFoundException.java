package org.example.lib.handler.exeptions.user;

import org.example.lib.handler.exeptions.NotFoundException;

import java.util.UUID;

public class UserNotFoundException extends NotFoundException {

    public UserNotFoundException(UUID id) {
        super("User not found by id: " + id);
    }

    public UserNotFoundException(String text) {
        super(text);
    }
}

