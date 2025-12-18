package org.example.lib.model.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;

import java.util.UUID;

@Data
@NoArgsConstructor
@Entity
@Table(name = "roles")
public class Role implements GrantedAuthority {

    @Id
    @GeneratedValue(generator = "UUID")
    private UUID id;

    @Column(unique = true, nullable = false, length = 50)
    @Enumerated(EnumType.STRING)
    private RoleType name;

    @Column(length = 200)
    private String description;

    public enum RoleType {
        USER("Обычный пользователь"),
        ADMIN("Администратор системы");

        private final String description;

        RoleType(String description) {
            this.description = description;
        }

        public String getDescription() {
            return description;
        }
    }

    public Role(RoleType name) {
        this.name = name;
        this.description = name.getDescription();
    }

    public Role(RoleType name, String description) {
        this.name = name;
        this.description = description;
    }

    @Override
    public String getAuthority() {
        return "ROLE_" + name.name();
    }
}