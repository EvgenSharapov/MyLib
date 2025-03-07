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

    @Column(name = "themes",length = 50)
    private String tableOfContent;

    @Column(name = "content", columnDefinition = "TEXT")
    private String content;

    @Enumerated(EnumType.STRING)
    @Column(name = "topic_area")
    private TopicArea topicArea;


    public Question() {
    }


}