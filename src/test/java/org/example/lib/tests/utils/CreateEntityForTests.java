package org.example.lib.tests.utils;

import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.model.Question;
import org.example.lib.model.TopicArea;

import java.util.UUID;

public class CreateEntityForTests {

    public static Question createQuestion(){
        UUID id = UUID.randomUUID();
        Question question = new Question();
        question.setId(id);
        question.setContent("Content");
        question.setTableOfContent("Table of Content");
        question.setTopicArea(TopicArea.TEST);
        return question;
    }

    public static QuestionRequestDTO createQuestionRequestDTO(){
        UUID id = UUID.randomUUID();
        return new QuestionRequestDTO(id, "Content", TopicArea.TEST, "Table of Content");
    }
}
