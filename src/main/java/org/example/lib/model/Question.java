package org.example.lib.model;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import java.util.UUID;

@Getter
@Setter
@Entity
@Table(name = "topic_library")
public class Question {

    @Id
    @Column(name = "topic_library_id")
    @GeneratedValue(generator = "UUID")
    private UUID id;

    @NotBlank(message = "Поле не должно быть пустым")
    @Size(max = 50, message = "Максимальный размер поля 50 символов")
    @Column(name = "themes",length = 50)
    private String tableOfContent;

    @NotBlank(message = "Поле не должно быть пустым")
    @Column(name = "content", columnDefinition = "TEXT")
    private String content;

    @NotNull(message = "Нужно выбрать раздел у темы")
    @Enumerated(EnumType.STRING)
    @Column(name = "topic_area")
    private TopicArea topicArea;

    @NotNull(message = "Нужно выбрать сложность темы")
    @Enumerated(EnumType.STRING)
    @Column(name = "difficulty")
    private Difficulty difficulty;

    public Question() {
    }

}