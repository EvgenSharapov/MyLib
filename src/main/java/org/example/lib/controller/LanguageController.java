package org.example.lib.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import java.util.Locale;


@Controller
public class LanguageController {

    @GetMapping("/change-language")
    public String changeLanguage(@RequestParam String language, HttpServletRequest request, HttpServletResponse response) {
        Locale locale = new Locale(language);

        request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, locale);
        return "redirect:" + request.getHeader("Referer"); // Возвращаем на предыдущую страницу
    }


}