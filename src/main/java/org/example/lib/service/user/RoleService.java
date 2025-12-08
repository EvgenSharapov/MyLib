package org.example.lib.service.user;

import java.util.HashSet;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.lib.model.entity.Role;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;
import java.util.Set;

@Service
@Slf4j
@RequiredArgsConstructor
public class RoleService {

    private final RoleRepository roleRepository;

    public Optional<Role> getRoleByName(Role.RoleType roleType) {
        return roleRepository.findByName(roleType);
    }

    @Transactional
    public Role createRoleIfNotExists(Role.RoleType roleType) {
        return roleRepository.findByName(roleType)
            .orElseGet(() -> {
                Role newRole = new Role(roleType);
                log.info("Создана новая роль: {}", roleType);
                return roleRepository.save(newRole);
            });
    }

    public Set<Role> getAllRoles() {
        return new HashSet<>(roleRepository.findAll());
    }

    public Set<Role> getUserRoles(String username) {
        return roleRepository.findAllByUsername(username);
    }

    public boolean isUserAdmin(String username) {
        return roleRepository.userHasRole(username, Role.RoleType.ADMIN);
    }

    public boolean isUserRegular(String username) {
        return roleRepository.userHasRole(username, Role.RoleType.USER);
    }

    @Transactional
    public void deleteRole(Role.RoleType roleType) {
        if (roleRepository.existsByName(roleType)) {
            roleRepository.deleteByName(roleType);
            log.info("Роль {} удалена", roleType);
        }
    }

    @Transactional
    public void initializeBaseRoles() {
        for (Role.RoleType roleType : Role.RoleType.values()) {
            createRoleIfNotExists(roleType);
        }
        log.info("Базовые роли инициализированы");
    }
}