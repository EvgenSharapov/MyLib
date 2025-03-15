package org.example.lib.config;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig {

    private final UserDetailsService userDetailsService;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests((requests) -> requests
                        .requestMatchers("/login","/change-language", "/update","/api/topics/**", "/sing-up", "/register", "/css/**", "/js/**", "/images/**").permitAll() // Разрешаем доступ к этим страницам без аутентификации
                        .requestMatchers("/", "/index").authenticated() // Требуем авторизации для главной страницы
                        .anyRequest().authenticated() // Все остальные запросы требуют аутентификации
                )
                .formLogin((form) -> form
                        .loginPage("/login") // Страница логина
                        .defaultSuccessUrl("/", true) // Перенаправление на / после успешного входа
                        .permitAll() // Разрешаем доступ к странице логина всем
                )
                .logout((logout) -> logout
                        .logoutUrl("/logout") // URL для выхода
                        .logoutSuccessUrl("/login") // Перенаправление на страницу логина после выхода
                        .invalidateHttpSession(true) // Уничтожение сессии
                        .deleteCookies("JSESSIONID") // Удаление cookies
                        .permitAll() // Разрешаем доступ к logout всем
                )
                .exceptionHandling((exception) -> exception
                        .authenticationEntryPoint((request, response, authException) -> {
                            // Перенаправление на /login, если пользователь не авторизован
                            response.sendRedirect("/login");
                        })
                );

        return http.build();
    }



    @Bean
    public AuthenticationProvider authenticationProvider(PasswordEncoder passwordEncoder) {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setPasswordEncoder(passwordEncoder); // Устанавливаем кодировщик паролей
        authProvider.setUserDetailsService(userDetailsService); // Устанавливаем UserDetailsService
        return authProvider;
    }
}