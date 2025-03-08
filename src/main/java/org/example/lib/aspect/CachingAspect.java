package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Aspect
@Component
//Аспект для кэширования
public class CachingAspect {

    private final Map<String, Object> cache = new HashMap<>();

    @Around("execution(* org.example.lib.service.question.QuestionServiceImpl.getRandomQuestion(..))")
    public Object cacheRandomQuestion(ProceedingJoinPoint joinPoint) throws Throwable {
        String cacheKey = "randomQuestion";

        if (cache.containsKey(cacheKey)) {
            return cache.get(cacheKey);
        }

        Object result = joinPoint.proceed();
        cache.put(cacheKey, result);
        return result;
    }
}