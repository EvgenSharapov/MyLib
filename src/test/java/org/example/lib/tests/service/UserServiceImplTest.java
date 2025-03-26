package org.example.lib.tests.service;

import org.example.lib.model.User;
import org.example.lib.repository.UserRepository;
import org.example.lib.service.user.UserServiceImpl;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Optional;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class UserServiceImplTest {

    @Mock
    private UserRepository userRepository;

    @Mock
    private PasswordEncoder passwordEncoder;

    @InjectMocks
    private UserServiceImpl userService;

    @Test
    void save_ShouldSaveUser() {
        User user = new User();
        user.setUsername("testUser");
        user.setEmail("test@example.com");
        user.setPassword("password");

        when(userRepository.existsByUsername("testUser")).thenReturn(false);
        when(userRepository.existsByEmail("test@example.com")).thenReturn(false);
        when(passwordEncoder.encode("password")).thenReturn("encodedPassword");
        when(userRepository.save(user)).thenReturn(user);

        User savedUser = userService.save(user);

        Assertions.assertNotNull(savedUser);
        Assertions.assertEquals("encodedPassword", savedUser.getPassword());
    }

    @Test
    void save_ShouldThrowException_WhenUsernameExists() {
        User user = new User();
        user.setUsername("existingUser");
        user.setEmail("test@example.com");
        user.setPassword("password");

        when(userRepository.existsByUsername("existingUser")).thenReturn(true);

        assertThrows(IllegalArgumentException.class, () -> userService.save(user));
    }

    @Test
    void save_ShouldThrowException_WhenEmailExists() {
        User user = new User();
        user.setUsername("testUser");
        user.setEmail("existing@example.com");
        user.setPassword("password");

        when(userRepository.existsByUsername("testUser")).thenReturn(false);
        when(userRepository.existsByEmail("existing@example.com")).thenReturn(true);

        assertThrows(IllegalArgumentException.class, () -> userService.save(user));
    }

    @Test
    void updateProfile_ShouldUpdateUser() {
        User user = new User();
        user.setUsername("testUser");
        user.setFirstName("OldFirstName");
        user.setLastName("OldLastName");
        user.setPassword("oldPassword");

        when(userRepository.findByUsername("testUser")).thenReturn(Optional.of(user));
        when(passwordEncoder.encode("newPassword")).thenReturn("encodedNewPassword");

        userService.updateProfile("testUser", "NewFirstName", "NewLastName", "newPassword");

        Assertions.assertEquals("NewFirstName", user.getFirstName());
        Assertions.assertEquals("NewLastName", user.getLastName());
        Assertions.assertEquals("encodedNewPassword", user.getPassword());
    }

    @Test
    void updateProfile_ShouldThrowException_WhenUserNotFound() {
        when(userRepository.findByUsername("unknownUser")).thenReturn(Optional.empty());

        assertThrows(UsernameNotFoundException.class, () ->
                userService.updateProfile("unknownUser", "NewFirstName", "NewLastName", "newPassword"));
    }

    @Test
    void updateProfile_UpdatesWithoutPassword_WhenPasswordNull() {
        String username = "testUser";
        User user = new User();
        user.setUsername(username);
        user.setFirstName("OldFirstName");
        user.setLastName("OldLastName");
        user.setPassword("oldPass");

        when(userRepository.findByUsername(username)).thenReturn(Optional.of(user));

        userService.updateProfile(username, "NewFirst", "NewLast", null);

        Assertions.assertEquals("NewFirst", user.getFirstName());
        Assertions.assertEquals("NewLast", user.getLastName());
        Assertions.assertEquals("oldPass", user.getPassword()); // Пароль не должен измениться
        verify(userRepository).save(user);
        verifyNoInteractions(passwordEncoder);
    }

    @Test
    void updateProfile_UpdatesWithoutPassword_WhenPasswordEmpty() {
        String username = "testUser";
        User user = new User();
        user.setUsername(username);
        user.setFirstName("OldFirstName");
        user.setLastName("OldLastName");
        user.setPassword("oldPass");

        when(userRepository.findByUsername(username)).thenReturn(Optional.of(user));

        userService.updateProfile(username, "NewFirst", "NewLast", "");

        Assertions.assertEquals("oldPass", user.getPassword()); // Пароль не должен измениться
        verifyNoInteractions(passwordEncoder);
    }

    @Test
    void updateProfile_ThrowsException_WhenUserNotFound() {
        String username = "nonExistentUser";
        when(userRepository.findByUsername(username)).thenReturn(Optional.empty());

        assertThrows(UsernameNotFoundException.class, () ->
                userService.updateProfile(username, "NewFirst", "NewLast", "newPass"));

        verify(userRepository, never()).save(any());
        verifyNoInteractions(passwordEncoder);
    }

    @Test
    void updateProfile_EncodesNewPassword_WhenPasswordProvided() {
        String username = "testUser";
        User user = new User();
        user.setUsername(username);
        user.setFirstName("OldFirstName");
        user.setLastName("OldLastName");
        user.setPassword("oldPass");
        String newPassword = "newPass123";
        String encodedPassword = "encodedNewPass123";

        when(userRepository.findByUsername(username)).thenReturn(Optional.of(user));
        when(passwordEncoder.encode(newPassword)).thenReturn(encodedPassword);

        userService.updateProfile(username, "First", "Last", newPassword);

        assertEquals(encodedPassword, user.getPassword());
        verify(passwordEncoder).encode(newPassword);
    }
}