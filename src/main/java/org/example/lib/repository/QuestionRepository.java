package org.example.lib.repository;

import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface QuestionRepository extends JpaRepository<Question, UUID> {

    List<Question> findByTopicArea(TopicArea topicArea);
    List<Question> findByTableOfContentContainingIgnoreCase(String text);
    List<Question> findByContentContainingIgnoreCase(String text);
    @Query(value = "SELECT * FROM questions WHERE difficulty = :difficulty ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Question findRandomByDifficulty(@Param("difficulty") String difficulty);
}
