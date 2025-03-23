package org.example.lib.tests.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.example.lib.controller.user.UserControllerImpl;
import org.example.lib.dto.UserUpdateRequest;
import org.example.lib.handler.GlobalExceptionHandler;
import org.example.lib.model.User;
import org.example.lib.service.user.UserServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.time.LocalDateTime;
import java.util.Optional;

@ExtendWith(MockitoExtension.class)
@Import(GlobalExceptionHandler.class)
public class UserControllerImplTest {

    private MockMvc mockMvc;

    @Mock
    private UserServiceImpl userService;

    @InjectMocks
    private UserControllerImpl userController;

    private final ObjectMapper objectMapper = new ObjectMapper();

    @BeforeEach
    void setUp() {
        mockMvc = MockMvcBuilders.standaloneSetup(userController)
                .setControllerAdvice(new GlobalExceptionHandler())
                .build();
    }

    @Test
    void registerUser_ShouldReturnSuccess() throws Exception {
        User user = new User();
        user.setUsername("testUser");
        user.setEmail("test@example.com");
        user.setPassword("password");

        mockMvc.perform(post("/register")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(user)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.success").value(true))
                .andExpect(jsonPath("$.message").value("Пользователь успешно зарегистрирован"));
    }


    @Test
    void getUserProfile_ShouldReturnProfile() throws Exception {
        User user = new User();
        user.setUsername("testUser");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setEmail("john.doe@example.com");
        user.setRegistrationDate(LocalDateTime.now());

        when(userService.findUserByName("testUser")).thenReturn(Optional.of(user));

        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);

        mockMvc.perform(get("/profile")
                        .principal(authentication))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.firstName").value("John"))
                .andExpect(jsonPath("$.lastName").value("Doe"))
                .andExpect(jsonPath("$.email").value("john.doe@example.com"));
    }

    @Test
    void getUserProfile_ShouldReturnNotFound_WhenUserDoesNotExist() throws Exception {
        when(userService.findUserByName("unknownUser")).thenReturn(Optional.empty());

        Authentication authentication = new UsernamePasswordAuthenticationToken("unknownUser", null);

        mockMvc.perform(get("/profile")
                        .principal(authentication))
                .andExpect(status().isNotFound());
    }

    @Test
    void updateProfile_ShouldReturnSuccess() throws Exception {
        // Arrange
        UserUpdateRequest request = new UserUpdateRequest();
        request.setFirstName("John");
        request.setLastName("Doe");
        request.setPassword("newPassword");

        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);

        mockMvc.perform(put("/update")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request))
                        .principal(authentication)) // Передаем объект Authentication
                .andExpect(status().isOk())
                .andExpect(content().string("Профиль обновлен"));
    }
}