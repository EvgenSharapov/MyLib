//package org.example.lib.config;
//
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//import org.example.lib.model.entity.Role;
//import org.example.lib.model.entity.User;
//import org.example.lib.repository.UserRepository;
//import org.example.lib.service.user.RoleRepository;
//import org.example.lib.service.user.RoleService;
//import org.springframework.boot.CommandLineRunner;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//import java.util.Set;
//
//@Configuration
//@RequiredArgsConstructor
//@Slf4j
//public class DataInitializer {
//
//    private final RoleService roleService;
//    private final RoleRepository roleRepository;
//    private final UserRepository userRepository;
//    private final PasswordEncoder passwordEncoder;
//
//    @Bean
//    public CommandLineRunner initData() {
//        return args -> {
//            log.info("Инициализация начальных данных...");
//            initRoles();
//            initAdminUser();
//            initTestUser();
//            log.info("Инициализация данных завершена");
//        };
//    }
//
//    private void initRoles() {
//        if (roleRepository.count() == 0) {
//            roleService.initializeBaseRoles();
//        }
//    }
//
//    private void initAdminUser() {
//        if (!userRepository.existsByUsername("admin")) {
//            User admin = new User();
//            admin.setUsername("adminadmin");
//            admin.setPassword(passwordEncoder.encode("admin123456"));
//            admin.setEmail("admin@example.com");
//            admin.setFirstName("Администратор");
//            admin.setLastName("Системы");
//
//            Role adminRole = roleRepository.findByName(Role.RoleType.ADMIN)
//                .orElseThrow(() -> new RuntimeException("Роль ADMIN не найдена"));
//            Role userRole = roleRepository.findByName(Role.RoleType.USER)
//                .orElseThrow(() -> new RuntimeException("Роль USER не найдена"));
//
//            admin.setRoles(Set.of(adminRole, userRole));
//            userRepository.save(admin);
//            log.info("Создан администратор по умолчанию: admin");
//        }
//    }
//
//    private void initTestUser() {
//        if (!userRepository.existsByUsername("user")) {
//            User user = new User();
//            user.setUsername("useruser");
//            user.setPassword(passwordEncoder.encode("user123456"));
//            user.setEmail("user@example.com");
//            user.setFirstName("Тестовый");
//            user.setLastName("Пользователь");
//
//            Role userRole = roleRepository.findByName(Role.RoleType.USER)
//                .orElseThrow(() -> new RuntimeException("Роль USER не найдена"));
//
//            user.setRoles(Set.of(userRole));
//            userRepository.save(user);
//            log.info("Создан тестовый пользователь: user");
//        }
//    }
//}
