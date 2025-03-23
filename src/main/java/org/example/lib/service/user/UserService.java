package org.example.lib.service.user;

import org.example.lib.dto.UserProfileDto;
import org.example.lib.model.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;
@Repository
public interface UserService {

    User save(User user);

    Optional<User> findUserByName(String userName);

    void updateProfile(String username, String firstName, String lastName, String password);

    boolean existsByUsername(String username);

    boolean existsByEmail(String email);
}
