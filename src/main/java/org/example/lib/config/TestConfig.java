package org.example.lib.config;

import org.example.lib.mapper.QuestionMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.retry.annotation.EnableRetry;
//import org.springframework.boot.test.context.TestConfiguration;

//@TestConfiguration
@EnableRetry
public class TestConfig {
    @Bean
    public QuestionMapper questionMapper() {
        return new QuestionMapper(); // Или mock
    }
}
