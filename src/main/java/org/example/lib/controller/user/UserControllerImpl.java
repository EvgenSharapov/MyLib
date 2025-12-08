package org.example.lib.controller.user;

import jakarta.validation.Valid;
import java.util.Set;
import org.example.lib.dto.UserProfileDto;
import org.example.lib.dto.UserProfileWithRolesDto;
import org.example.lib.dto.UserRegistrationDto;
import org.example.lib.dto.UserUpdateRequest;
import org.example.lib.model.entity.Role;
import org.example.lib.model.entity.User;
import org.example.lib.service.user.UserService;
import org.example.lib.service.user.UserServiceImpl;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.util.Map;
import java.util.Optional;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class UserControllerImpl implements UserController{

    private final UserService userService;
    public UserControllerImpl(UserServiceImpl userService) {
        this.userService = userService;
    }


    @Override
    public String addUser(User user , Model model) {
        model.addAttribute("user", user);
        return "user/sing-up";
    }

    @Override
    public String addAdmin(Model model) {
        model.addAttribute("userRegistrationDto", new UserRegistrationDto());
        return "user/admin-register";
    }

    @Override
    public ResponseEntity<?> registerUser(@Valid @ModelAttribute("userRegistrationDto") UserRegistrationDto userRegistrationDto) {
        try {
            userRegistrationDto.setRoles(Set.of("USER"));
            userService.registerUser(userRegistrationDto);
            return ResponseEntity.ok(Map.of(
                "success", true,
                "message", "Пользователь успешно зарегистрирован"
            ));
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().body(Map.of(
                "success", false,
                "message", e.getMessage()
            ));
        }
    }

    @Override
    public ResponseEntity<?> registerAdmin(@Valid @ModelAttribute("userRegistrationDto") UserRegistrationDto userRegistrationDto) {
        try {
            userRegistrationDto.setRoles(Set.of("ADMIN", "USER"));
            userService.registerUser(userRegistrationDto);
            return ResponseEntity.ok(Map.of(
                "success", true,
                "message", "Администратор успешно зарегистрирован"
            ));
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().body(Map.of(
                "success", false,
                "message", e.getMessage()
            ));
        }
    }

    @Override
    public String loginForm(User user, Model model) {
        model.addAttribute("user", user);
        return "login";
    }

    @Override
    public ResponseEntity<UserProfileDto> getUserProfile(Authentication authentication) {
        String username = authentication.getName();
        Optional<User> userOptional = userService.findUserByName(username);

        if (userOptional.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

        User user = userOptional.get();
        UserProfileDto userProfile = new UserProfileDto(
                user.getFirstName(),
                user.getLastName(),
                user.getEmail(),
                user.getRegistrationDate()
        );

        return ResponseEntity.ok(userProfile);
    }

    @Override
    public ResponseEntity<UserProfileWithRolesDto> getUserProfileWithRoles(Authentication authentication) {
        String username = authentication.getName();
        Optional<User> userOptional = userService.findUserByName(username);

        if (userOptional.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

        User user = userOptional.get();
        UserProfileWithRolesDto userProfile = UserProfileWithRolesDto.fromEntity(user);

        return ResponseEntity.ok(userProfile);
    }

    @Override
    public ResponseEntity<Boolean> isAdmin(Authentication authentication) {
        if (authentication == null || !authentication.isAuthenticated()) {
            return ResponseEntity.ok(false);
        }

        String username = authentication.getName();
        Optional<User> userOptional = userService.findUserByName(username);

        if (userOptional.isEmpty()) {
            return ResponseEntity.ok(false);
        }

        User user = userOptional.get();
        boolean isAdmin = user.getRoles().stream()
            .anyMatch(role -> role.getName() == Role.RoleType.ADMIN);

        return ResponseEntity.ok(isAdmin);
    }

    @Override
    public ResponseEntity<String> updateProfile(UserUpdateRequest request, Authentication authentication) {
        String username = authentication.getName();
        userService.updateProfile(username, request.getFirstName(), request.getLastName(), request.getPassword());
        return ResponseEntity.ok()
                .contentType(MediaType.valueOf("text/plain;charset=UTF-8"))
                .body("Профиль обновлен");
    }
}
