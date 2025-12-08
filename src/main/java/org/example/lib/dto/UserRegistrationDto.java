package org.example.lib.dto;

import jakarta.validation.constraints.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Builder;

import java.util.HashSet;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserRegistrationDto {

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(min = 4, max = 20, message = "Имя пользователя должно содержать от 4 до 20 символов")
    @Pattern(regexp = "^[a-zA-Z0-9_]+$", message = "Имя пользователя может содержать только буквы, цифры и символы подчеркивания")
    private String username;

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(min = 8, message = "Длина пароля должна составлять не менее 8 символов")
    @Pattern(
        regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=!])(?=\\S+$).{8,}$",
        message = "Пароль должен содержать минимум 8 символов, хотя бы одну цифру, одну заглавную букву, одну строчную букву и один специальный символ"
    )
    private String password;

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(max = 50, message = "Длина имени не может превышать 50 символов")
    @Pattern(regexp = "^[a-zA-Zа-яА-ЯёЁ\\-']+$", message = "Имя может содержать только буквы и дефисы")
    private String firstName;

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(max = 50, message = "Длина фамилии не должна превышать 50 символов")
    @Pattern(regexp = "^[a-zA-Zа-яА-ЯёЁ\\-']+$", message = "Фамилия может содержать только буквы и дефисы")
    private String lastName;

    @NotBlank(message = "Поле не должно быть пустым")
    @Email(message = "Адрес электронной почты должен быть действительным")
    @Size(max = 50, message = "Длина электронной почты не должна превышать 50 символов")
    private String email;

    @AssertTrue(message = "Необходимо согласие с условиями использования")
    private boolean termsAccepted;

    @Builder.Default
    private Set<String> roles = new HashSet<>();

    @NotBlank(message = "Подтверждение пароля обязательно")
    private String confirmPassword;

    @AssertTrue(message = "Пароли не совпадают")
    public boolean isPasswordMatching() {
        return password != null && password.equals(confirmPassword);
    }

    public Set<String> getRolesOrDefault() {
        if (roles == null || roles.isEmpty()) {
            return Set.of("USER");
        }
        return roles;
    }
}
