package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.handler.exeptions.question.QuestionNotFoundException;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

@Aspect
@Component
//Аспект для кэширования
public class CachingAspect {

    private final Map<String, List<QuestionRequestDTO>> cache = new HashMap<>();

    @Around("execution(* org.example.lib.service.question.QuestionServiceImpl.getRandomQuestion(..))")
    public Object cacheRandomQuestion(ProceedingJoinPoint joinPoint) throws Throwable {
        String cacheKey = "allQuestions";

        if (!cache.containsKey(cacheKey)) {
            Object result = joinPoint.proceed();
            if (result instanceof List) {
                cache.put(cacheKey, (List<QuestionRequestDTO>) result);
            } else {
                return result;
            }
        }

        List<QuestionRequestDTO> questions = cache.get(cacheKey);
        if (questions.isEmpty()) {
            throw new QuestionNotFoundException("Нет доступных тем");
        }
        return questions.get(ThreadLocalRandom.current().nextInt(questions.size()));
    }
}