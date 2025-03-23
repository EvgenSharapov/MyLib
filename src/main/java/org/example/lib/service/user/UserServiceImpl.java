package org.example.lib.service.user;

import lombok.RequiredArgsConstructor;
import org.example.lib.dto.UserProfileDto;
import org.example.lib.handler.exeptions.user.UserNotFoundException;
import org.example.lib.mapper.UserMapper;
import org.example.lib.model.User;
import org.example.lib.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserDetailsService,UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserMapper userMapper;


    @Override
    public User save(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return userRepository.save(user);
    }

    @Override
    public User findById(UUID id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new UserNotFoundException(id));
    }

    @Override
    public void delete(UUID id) {
        userRepository.deleteById(id);
    }

    @Override
    public Optional<User> findUserByName(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public void updateProfile(String userName, String firstName, String lastName, String password) {
        User user = userRepository.findByUsername(userName)
                .orElseThrow(() -> new UsernameNotFoundException("Пользователь не найден: " + userName));

        user.setFirstName(firstName);
        user.setLastName(lastName);

        if (password != null && !password.isEmpty()) {
            user.setPassword(passwordEncoder.encode(password)); // Обновляем пароль, если он указан
        }

        userRepository.save(user);
    }

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        return userRepository.findByUsername(userName)
                .orElseThrow(() -> new UsernameNotFoundException("Пользователь не найден: " + userName));
    }

    public boolean existsByUsername(String username) {
        return userRepository.existsByUsername(username);
    }

    public boolean existsByEmail(String email) {
        return userRepository.existsByEmail(email);
    }

}