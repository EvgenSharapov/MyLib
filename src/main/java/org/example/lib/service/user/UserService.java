package org.example.lib.service.user;

import org.example.lib.dto.UserProfileDto;
import org.example.lib.model.User;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface UserService {

    User save(User user);

    User findById(UUID id);

    void delete(UUID id);

    Optional<User> findUserByName(String userName);

    void updateProfile(String username, String firstName, String lastName, String password);

}
