package org.example.lib.repository;

import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface QuestionRepository extends JpaRepository<Question, UUID> {

    List<Question> findByTopicArea(TopicArea topicArea);
}
