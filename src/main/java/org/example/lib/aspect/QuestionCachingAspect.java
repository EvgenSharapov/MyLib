package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.service.question.QuestionService;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Aspect
@Component
public class QuestionCachingAspect {
    private final Map<String, List<QuestionRequestDTO>> cache = new HashMap<>();

    @Around("execution(* org.example.lib.service.question.QuestionServiceImpl.getAll(..))")
    public Object cacheGetAll(ProceedingJoinPoint joinPoint) throws Throwable {
        String cacheKey = "allQuestions";
        if (cache.containsKey(cacheKey)) {
            return cache.get(cacheKey);
        }
        Object result = joinPoint.proceed();
        if (result instanceof List<?>) {
            cache.put(cacheKey, (List<QuestionRequestDTO>) result);
        }
        return result;
    }
}