package org.example.lib.dto;

import lombok.Builder;
import java.time.LocalDateTime;

@Builder
public record UserProfileDto (
        String firstName,
        String lastName,
        String email,
        LocalDateTime registrationDate

){

}