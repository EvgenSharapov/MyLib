package org.example.lib.service.user;

import java.util.HashSet;
import java.util.Set;
import lombok.RequiredArgsConstructor;
import org.example.lib.dto.UserRegistrationDto;
import org.example.lib.model.entity.Role;
import org.example.lib.model.entity.User;
import org.example.lib.repository.UserRepository;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserDetailsService,UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final RoleRepository roleRepository;


    @Override
    @Transactional
    public User save(User user) {
        if (existsByUsername(user.getUsername())) {
            throw new IllegalArgumentException("Пользователь с таким логином уже существует");
        }

        if (existsByEmail(user.getEmail())) {
            throw new IllegalArgumentException("Пользователь с такой почтой уже зарегистрирован");
        }

        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return userRepository.save(user);
    }

    @Override
    @Transactional
    public User registerUser(UserRegistrationDto userRegistrationDto) {
        if (!userRegistrationDto.isTermsAccepted()) {
            throw new IllegalArgumentException("Необходимо согласие с условиями использования");
        }
        if (userRepository.existsByUsername(userRegistrationDto.getUsername())) {
            throw new IllegalArgumentException("Пользователь с таким именем уже существует");
        }

        if (userRepository.existsByEmail(userRegistrationDto.getEmail())) {
            throw new IllegalArgumentException("Пользователь с таким email уже существует");

        }

        User user = new User();
        user.setUsername(userRegistrationDto.getUsername());
        user.setPassword(passwordEncoder.encode(userRegistrationDto.getPassword()));
        user.setEmail(userRegistrationDto.getEmail());
        user.setFirstName(userRegistrationDto.getFirstName());
        user.setLastName(userRegistrationDto.getLastName());

        Set<Role> roles = new HashSet<>();
        if (userRegistrationDto.getRoles() != null) {
            for (String roleName : userRegistrationDto.getRoles()) {
                Role.RoleType roleType = Role.RoleType.valueOf(roleName);
                Role role = roleRepository.findByName(roleType)
                    .orElseThrow(() -> new IllegalArgumentException("Роль не найдена: " + roleName));
                roles.add(role);
            }
        } else {
            Role userRole = roleRepository.findByName(Role.RoleType.USER)
                .orElseThrow(() -> new IllegalArgumentException("Базовая роль USER не найдена"));
            roles.add(userRole);
        }

        user.setRoles(roles);

        return userRepository.save(user);
    }

    @Override
    public Optional<User> findUserByName(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    @Transactional
    public void updateProfile(String username, String firstName, String lastName, String password) {
        User user = userRepository.findByUsername(username)
            .orElseThrow(() -> new IllegalArgumentException("Пользователь не найден"));

        if (firstName != null && !firstName.isEmpty()) {
            user.setFirstName(firstName);
        }

        if (lastName != null && !lastName.isEmpty()) {
            user.setLastName(lastName);
        }

        if (password != null && !password.isEmpty()) {
            user.setPassword(passwordEncoder.encode(password));
        }

        userRepository.save(user);
    }

    @Override
    public boolean isAdmin(String username) {
        Optional<User> userOptional = findUserByName(username);
        if (userOptional.isEmpty()) {
            return false;
        }

        return isAdmin(userOptional.get());
    }

    @Override
    public boolean isAdmin(User user) {
        return user.getRoles().stream()
            .anyMatch(role -> role.getName() == Role.RoleType.ADMIN);
    }

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        return userRepository.findByUsername(userName)
                .orElseThrow(() -> new UsernameNotFoundException("Пользователь не найден: " + userName));
    }

    public boolean existsByUsername(String username) {
        return userRepository.existsByUsername(username);
    }

    public Optional<User> getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return Optional.empty();
        }

        String username = authentication.getName();
        return userRepository.findByUsername(username);
    }

    public boolean isCurrentUserAdmin() {
        return getCurrentUser()
            .map(User::isAdmin)
            .orElse(false);
    }

    public boolean existsByEmail(String email) {
        return userRepository.existsByEmail(email);
    }
}
