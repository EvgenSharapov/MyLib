package org.example.lib.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.example.lib.model.TopicArea;

import java.time.LocalDateTime;
import java.util.UUID;


//@Setter
//@Getter
//public class UserProfileDto {
//    private String firstName;
//    private String lastName;
//    private String email;
//    private LocalDateTime registrationDate;
//
//    // Конструктор, геттеры и сеттеры
//    public UserProfileDto(String firstName, String lastName, String email, LocalDateTime registrationDate) {
//        this.firstName = firstName;
//        this.lastName = lastName;
//        this.email = email;
//        this.registrationDate = registrationDate;
//    }
//
//    // Геттеры и сеттеры
//}

@Builder
public record UserProfileDto (
        String firstName,
        String lastName,
        String email,
        LocalDateTime registrationDate

){

}