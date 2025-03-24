package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.retry.annotation.Backoff;
import org.springframework.retry.annotation.Retryable;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class RetryAspect {

    @Around("@annotation(retryable)")
    public Object retryMethod(ProceedingJoinPoint joinPoint, Retryable retryable) throws Throwable {
        int maxAttempts = retryable.maxAttempts();
        Backoff backoff = retryable.backoff();
        Class<? extends Throwable>[] retryFor = retryable.retryFor();
        Class<? extends Throwable>[] noRetryFor = retryable.noRetryFor();

        Throwable lastException = null;

        for (int attempt = 1; attempt <= maxAttempts; attempt++) {
            try {
                return joinPoint.proceed();
            } catch (Throwable e) {
                lastException = e;

                // Проверяем, нужно ли делать повторную попытку
                if (!shouldRetry(e, retryFor, noRetryFor) || attempt == maxAttempts) {
                    throw e;
                }

                // Рассчитываем время задержки
                long delay = calculateBackoff(backoff, attempt);
                if (delay > 0) {
                    try {
                        Thread.sleep(delay);
                    } catch (InterruptedException ie) {
                        Thread.currentThread().interrupt();
                        throw new IllegalStateException("Retry interrupted", ie);
                    }
                }
            }
        }
        throw lastException;
    }

    private boolean shouldRetry(Throwable e,
                                Class<? extends Throwable>[] retryFor,
                                Class<? extends Throwable>[] noRetryFor) {
        // Если исключение в noRetryFor - не повторяем
        for (Class<? extends Throwable> noRetry : noRetryFor) {
            if (noRetry.isInstance(e)) {
                return false;
            }
        }

        // Если retryFor не пуст, проверяем соответствие
        if (retryFor.length > 0) {
            for (Class<? extends Throwable> retry : retryFor) {
                if (retry.isInstance(e)) {
                    return true;
                }
            }
            return false;
        }

        // По умолчанию повторяем для всех RuntimeException
        return e instanceof RuntimeException;
    }

    private long calculateBackoff(Backoff backoff, int attempt) {
        if (attempt == 1) {
            return backoff.delay();
        }
        return (long) (backoff.delay() * Math.pow(backoff.multiplier(), attempt - 1));
    }
}