package org.example.lib.handler;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ErrorResponses {
    private String message;

    public ErrorResponses(String message) {
        this.message = message;
    }

}