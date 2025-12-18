package org.example.lib.service.user;

import java.util.Set;
import org.example.lib.model.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface RoleRepository extends JpaRepository<Role, UUID> {

    /**
     * Поиск роли по имени
     * @param name имя роли (ADMIN или USER)
     * @return Optional с ролью, если найдена
     */
    Optional<Role> findByName(Role.RoleType name);

    /**
     * Проверка существования роли по имени
     * @param name имя роли
     * @return true, если роль существует
     */
    boolean existsByName(Role.RoleType name);

    /**
     * Удаление роли по имени
     * @param name имя роли
     */
    void deleteByName(Role.RoleType name);

    @Query("SELECT r FROM User u JOIN u.roles r WHERE u.username = :username")
    Set<Role> findAllByUsername(@Param("username") String username);

    @Query("SELECT CASE WHEN COUNT(r) > 0 THEN true ELSE false END " +
           "FROM User u JOIN u.roles r WHERE u.username = :username AND r.name = :roleType")
    boolean userHasRole(@Param("username") String username, @Param("roleType") Role.RoleType roleType);
}
