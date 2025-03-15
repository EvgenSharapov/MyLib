package org.example.lib.controller.user;


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

    @PostMapping("/register")
    String saveUser(@ModelAttribute("user") User user) ;

    @GetMapping("/login")
    String loginForm(User user, Model model);

    @GetMapping("/profile")
    ResponseEntity<UserProfileDto> getUserProfile(Authentication authentication);

    @PostMapping("/update")
    ResponseEntity<String> updateProfile(@RequestBody UserUpdateRequest request, Authentication authentication);
}
