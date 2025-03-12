package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.retry.annotation.Retryable;
import org.springframework.stereotype.Component;

@Aspect
@Component
//Аспект для повторных попыток
public class RetryAspect {

    @Around("execution(* org.example.lib.service.question.QuestionServiceImpl.*(..)) && " +
            "@annotation(retryable)")
    public Object retryMethod(ProceedingJoinPoint joinPoint, Retryable retryable) throws Throwable {
        int maxAttempts = retryable.maxAttempts();
        long backoff = retryable.backoff().value();

        Throwable lastException = null;
        for (int attempt = 1; attempt <= maxAttempts; attempt++) {
            try {
                return joinPoint.proceed();
            } catch (Exception e) {
                lastException = e;
                if (attempt < maxAttempts) {
                    Thread.sleep(backoff);
                }
            }
        }
        throw lastException;
    }
}