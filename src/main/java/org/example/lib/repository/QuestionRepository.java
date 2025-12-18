package org.example.lib.repository;

import java.util.Map;
import org.example.lib.model.entity.Question;
import org.example.lib.model.enums.TopicArea;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface QuestionRepository extends JpaRepository<Question, UUID> {

    List<Question> findByTopicArea(TopicArea topicArea);

    List<Question> findByTableOfContentContainingIgnoreCase(String text);

    List<Question> findByContentContainingIgnoreCase(String text);

    @Query("SELECT q.topicArea as area, COUNT(q) as count FROM Question q GROUP BY q.topicArea")
    List<Object[]> countQuestionsByArea();
}
