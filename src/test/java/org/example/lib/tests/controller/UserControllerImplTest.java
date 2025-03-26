package org.example.lib.tests.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
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


import org.springframework.http.ResponseEntity;
import java.util.Map;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;


import java.time.LocalDateTime;
import java.util.Objects;
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
        mockMvc.perform(post("/register")
                        .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                        .param("username", "ivan_2024")
                        .param("password", "SecurePass123")
                        .param("firstName", "Иван")
                        .param("lastName", "Иванов")
                        .param("email", "ivanov@example.com"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.success").value(true));
    }

    @Test
    void registerUser_ReturnsSuccessResponse_WhenUserValid() {
        User user = new User();
        user.setUsername("testUser");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setEmail("john.doe@example.com");

        when(userService.save(user)).thenReturn(user);

        ResponseEntity<?> response = userController.registerUser(user);

        assertEquals(200, response.getStatusCodeValue());
        assertEquals(true, ((Map<?, ?>) Objects.requireNonNull(response.getBody())).get("success"));
        assertEquals("Пользователь успешно зарегистрирован", ((Map<?, ?>) response.getBody()).get("message"));
        verify(userService, times(1)).save(user);
    }

    @Test
    void registerUser_ReturnsErrorResponse_WhenUserServiceThrowsException() {
        User user = new User();
        user.setUsername("testUser");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setEmail("john.doe@example.com");
        user.setPassword("333");

        String errorMessage = "Пароль слишком короткий";
        doThrow(new IllegalArgumentException(errorMessage)).when(userService).save(user);

        ResponseEntity<?> response = userController.registerUser(user);

        assertEquals(400, response.getStatusCodeValue());
        assertNotEquals(true, ((Map<?, ?>) Objects.requireNonNull(response.getBody())).get("success"));
        assertEquals(errorMessage, ((Map<?, ?>) response.getBody()).get("message"));
        verify(userService, times(1)).save(user);
    }

    @Test
    void registerUser_ReturnsErrorResponse_WhenUserIsNull() {
        doThrow(new IllegalArgumentException("Пользователь не может быть null"))
                .when(userService).save(null);

        ResponseEntity<?> response = userController.registerUser(null);

        assertEquals(400, response.getStatusCodeValue());
        assertEquals("Пользователь не может быть null", ((Map<?, ?>) Objects.requireNonNull(response.getBody())).get("message"));
    }

    @Test
    void registerUser_ResponseContainsRequiredFields() {
        User user = new User();
        user.setUsername("testUser");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setEmail("john.doe@example.com");

        when(userService.save(user)).thenReturn(user);

        ResponseEntity<?> response = userController.registerUser(user);
        Map<?, ?> responseBody = (Map<?, ?>) response.getBody();

        assertTrue(responseBody.containsKey("success"));
        assertTrue(responseBody.containsKey("message"));
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