package org.example.lib.controller.user;


import jakarta.validation.Valid;
import org.example.lib.dto.UserProfileDto;
import org.example.lib.dto.UserUpdateRequest;
import org.example.lib.model.User;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller

public interface UserController {

    @GetMapping("/sing-up")
    String addUser(User user , Model model);

    @GetMapping("/login")
    String loginForm(User user, Model model);

    @GetMapping("/profile")
    ResponseEntity<UserProfileDto> getUserProfile(Authentication authentication);

    @PutMapping("/update")
    ResponseEntity<String> updateProfile(@Valid @RequestBody UserUpdateRequest request, Authentication authentication);

    @PostMapping("/register")
    ResponseEntity<?> registerUser(@Valid @ModelAttribute("user") User user);
}
