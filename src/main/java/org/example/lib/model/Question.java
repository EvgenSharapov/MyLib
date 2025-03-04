package org.example.lib.model;
import jakarta.persistence.*;
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

    @Column(name = "theme")
    private String theme;

    @Lob
    @Column(name = "content")
    private String content;

    @Enumerated(EnumType.STRING)
    @Column(name = "topic_area")
    private TopicArea topicArea;


    public Question() {
    }

    public UUID getId() {
        return id;
    }

    public String getTheme() {
        return theme;
    }

    public String getContent() {
        return content;
    }

    public TopicArea getTopicArea() {
        return topicArea;
    }
}