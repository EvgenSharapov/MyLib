package org.example.lib.controller;

import lombok.RequiredArgsConstructor;
import org.example.lib.service.user.UserService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final UserService userService;

    @GetMapping("/")
    public String index(Model model, Authentication authentication) {
        boolean isAdmin = false;
        if (authentication != null && authentication.isAuthenticated()) {
            String username = authentication.getName();
            isAdmin = userService.isAdmin(username);
        }

        model.addAttribute("isAdmin", isAdmin);

        return "index";
    }
}