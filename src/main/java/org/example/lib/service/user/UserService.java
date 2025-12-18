package org.example.lib.service.user;

import org.example.lib.dto.UserRegistrationDto;
import org.example.lib.model.entity.User;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserService {

    User save(User user);

    User registerUser(UserRegistrationDto userRegistrationDto);

    Optional<User> findUserByName(String userName);

    void updateProfile(String username, String firstName, String lastName, String password);

    boolean existsByUsername(String username);

    boolean existsByEmail(String email);

    boolean isAdmin(String username);

    boolean isAdmin(User user);
}
