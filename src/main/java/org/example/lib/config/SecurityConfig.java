//package org.example.lib.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.web.SecurityFilterChain;
//
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.password.NoOpPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig {
//
//    @Bean
//    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
//        http
//                .authorizeHttpRequests(auth -> auth
//                        .requestMatchers("/api/topics/**").permitAll()
//                        .requestMatchers("/").permitAll()// Разрешаем доступ к API
//                        .requestMatchers("/h2-console/**").permitAll() // Разрешаем доступ к H2 Console (если используется)
//                        .anyRequest().authenticated()
//                )
//                .csrf().disable() // Отключаем CSRF для упрощения (не рекомендуется для production)
//                .headers().frameOptions().disable(); // Отключаем frameOptions для H2 Console
//
//        return http.build();
//    }
//
//    @Bean
//    public UserDetailsService userDetailsService() {
//        UserDetails admin = User.withUsername("admin")
//                .password(passwordEncoder().encode("admin")) // Закодированный пароль
//                .roles("ADMIN")
//                .build();
//
//        UserDetails user = User.withUsername("user")
//                .password(passwordEncoder().encode("user")) // Закодированный пароль
//                .roles("USER")
//                .build();
//
//        return new InMemoryUserDetailsManager(admin, user);
//    }
//
//    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//}