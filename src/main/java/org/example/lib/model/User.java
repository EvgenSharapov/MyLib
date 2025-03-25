package org.example.lib.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Collections;
import java.util.UUID;


@Data
@Entity
@Table(name = "user_info")
public class User implements UserDetails {

    @Id
    @GeneratedValue(generator = "UUID")
    private UUID id;

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(min = 4, max = 20, message = "Имя пользователя должно содержать от 4 до 20 символов")
    @Pattern(regexp = "^[a-zA-Z0-9_]+$", message = "Имя пользователя может содержать только буквы, цифры и символы подчеркивания")
    @Column(unique = true, nullable = false)
    private String username;

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(min = 8, message = "Длина пароля должна составлять не менее 8 символов")
    @Column(nullable = false)
    private String password;

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(max = 50, message = "Длина имени не может превышать 50 символов")
    @Pattern(regexp = "^[a-zA-Zа-яА-ЯёЁ\\-']+$", message = "Имя может содержать только буквы и дефисы")
    @Column(nullable = false)
    private String firstName;

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(max = 50, message = "Длина фамилии не должна превышать 50 символов")
    @Pattern(regexp = "^[a-zA-Zа-яА-ЯёЁ\\-']+$", message = "Фамилия может содержать только буквы и дефисы")
    @Column(nullable = false)
    private String lastName;

    @NotBlank(message = "Поле не должно быть пустым")
    @Email(message = "Адрес электронной почты должен быть действительным")
    @Size(max = 50, message = "Длина электронной почты не должна превышать 50 символов")
    @Column(nullable = false)
    private String email;

    @CreationTimestamp
    @Column(nullable = false, updatable = false)
    private LocalDateTime registrationDate;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.emptyList(); // Добавьте роли, если необходимо
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}