package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.example.lib.dto.QuestionRequestDTO;
import org.example.lib.handler.exeptions.question.QuestionNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

@Aspect
@Component
    //Аспект для кеширования метода getAll
public class CachingAspect {

    private final Map<String, List<QuestionRequestDTO>> cache = new HashMap<>();

    @Around("execution(* org.example.lib.service.question.QuestionServiceImpl.getAll(..))")
    public Object cacheGetAll(ProceedingJoinPoint joinPoint) throws Throwable {
        String cacheKey = "allQuestions";

        // Если данные уже есть в кеше, возвращаем их
        if (cache.containsKey(cacheKey)) {
            return cache.get(cacheKey);
        }

        // Если данных в кеше нет, вызываем метод и кешируем результат
        Object result = joinPoint.proceed();

        if (result instanceof List<?>) {
            // Приводим результат к типу List<QuestionRequestDTO>
            List<QuestionRequestDTO> questions = (List<QuestionRequestDTO>) result;

            // Кешируем список вопросов
            cache.put(cacheKey, questions);
        }
        System.out.println("метод кеширован");

        return result;
    }

    // Метод для очистки кеша
    @After("execution(* org.example.lib.service.question.QuestionServiceImpl.clearCache(..))")
    public void clearCache() {
        cache.clear();
        System.out.println("Кеш очищен");
    }
}