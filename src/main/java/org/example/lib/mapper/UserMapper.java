package org.example.lib.mapper;


import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.dto.UserProfileDto;
import org.example.lib.model.Question;
import org.example.lib.model.User;
import org.springframework.stereotype.Component;

@Component
public class UserMapper {

    public UserProfileDto mapToUserRequestDTO(User user) {
        return UserProfileDto.builder()
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .email(user.getEmail())
                .registrationDate(user.getRegistrationDate())
                .build();
    }
}
