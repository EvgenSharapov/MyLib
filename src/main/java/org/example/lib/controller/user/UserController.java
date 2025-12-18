package org.example.lib.controller.user;


import jakarta.validation.Valid;
import org.example.lib.dto.UserProfileDto;
import org.example.lib.dto.UserProfileWithRolesDto;
import org.example.lib.dto.UserRegistrationDto;
import org.example.lib.dto.UserUpdateRequest;
import org.example.lib.model.entity.User;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public interface UserController {

    @GetMapping("/sing-up")
    String addUser(User user , Model model);

    @GetMapping("/admin/register")
    String addAdmin(Model model);

    @GetMapping("/login")
    String loginForm(User user, Model model);

    @GetMapping("/profile")
    ResponseEntity<UserProfileDto> getUserProfile(Authentication authentication);

    @GetMapping("/profile-with-roles")
    ResponseEntity<UserProfileWithRolesDto> getUserProfileWithRoles(Authentication authentication);

    @GetMapping("/is-admin")
    ResponseEntity<Boolean> isAdmin(Authentication authentication);

    @PutMapping("/update")
    ResponseEntity<String> updateProfile(@Valid @RequestBody UserUpdateRequest request, Authentication authentication);

    @PostMapping("/register")
    ResponseEntity<?> registerUser(@Valid @ModelAttribute("userRegistrationDto") UserRegistrationDto userRegistrationDto);

    @PostMapping("/register-admin")
    ResponseEntity<?> registerAdmin(@Valid @ModelAttribute("userRegistrationDto") UserRegistrationDto userRegistrationDto);
}
