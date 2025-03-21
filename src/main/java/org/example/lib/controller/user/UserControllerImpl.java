package org.example.lib.controller.user;

//import org.example.lib.dto.UserProfileDto;
import org.example.lib.dto.UserProfileDto;
import org.example.lib.dto.UserUpdateRequest;
import org.example.lib.model.User;
import org.example.lib.service.user.UserService;
import org.example.lib.service.user.UserServiceImpl;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class UserControllerImpl implements UserController{

    private final UserService userService;
    public UserControllerImpl(UserServiceImpl userService) {
        this.userService = userService;
    }


    @GetMapping("/sing-up")
    public String addUser(User user , Model model) {
        model.addAttribute("user", user);
        return "user/sing-up";
    }

    @PostMapping("/register")
    public String saveUser(@ModelAttribute("user") User user) {
        userService.save(user);
        return "index";
    }

    @GetMapping("/login")
    public String loginForm(User user, Model model) {
        model.addAttribute("user", user);
        return "login";
    }


    @GetMapping("/profile")
    public ResponseEntity<UserProfileDto> getUserProfile(Authentication authentication) {
        String username = authentication.getName(); // Получаем имя текущего пользователя
        Optional<User> userOptional = userService.findUserByName(username); // Ищем пользователя

        if (userOptional.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build(); // Если пользователь не найден
        }

        User user = userOptional.get();

        // Создаем DTO для передачи данных
        UserProfileDto userProfile = new UserProfileDto(
                user.getFirstName(),
                user.getLastName(),
                user.getEmail(),
                user.getRegistrationDate()
        );

        return ResponseEntity.ok(userProfile);
    }

    @PostMapping("/update")
    public ResponseEntity<String> updateProfile(@RequestBody UserUpdateRequest request, Authentication authentication) {
        String username = authentication.getName();
        userService.updateProfile(username, request.getFirstName(), request.getLastName(), request.getPassword());
        return ResponseEntity.ok("Профиль обновлен");
    }

}