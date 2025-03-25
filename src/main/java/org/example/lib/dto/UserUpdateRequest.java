package org.example.lib.dto;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserUpdateRequest {
    private String firstName;
    private String lastName;
    private String password;

}