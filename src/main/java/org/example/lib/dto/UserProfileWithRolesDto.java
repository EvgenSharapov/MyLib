package org.example.lib.dto;

import java.time.LocalDateTime;
import java.util.Set;
import org.example.lib.model.entity.Role;
import org.example.lib.model.entity.User;

public record UserProfileWithRolesDto(
    String firstName,
    String lastName,
    String email,
    LocalDateTime registrationDate,
    Set<String> roles,
    boolean isAdmin
) {
    public static UserProfileWithRolesDto fromEntity(User user) {
        return new UserProfileWithRolesDto(
            user.getFirstName(),
            user.getLastName(),
            user.getEmail(),
            user.getRegistrationDate(),
            user.getRoles().stream()
                .map(role -> role.getName().name())
                .collect(java.util.stream.Collectors.toSet()),
            user.getRoles().stream()
                .anyMatch(role -> role.getName() == Role.RoleType.ADMIN)
        );
    }
}
