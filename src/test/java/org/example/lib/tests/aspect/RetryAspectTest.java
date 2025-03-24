package org.example.lib.tests.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.example.lib.aspect.RetryAspect;
import org.example.lib.service.question.QuestionServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.retry.annotation.Backoff;
import org.springframework.retry.annotation.Retryable;
import java.lang.reflect.Method;
import java.util.UUID;
import static org.junit.Assert.assertThrows;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;
import static org.mockito.Mockito.times;

public class RetryAspectTest {

    @Test
    void testRetryAspect() throws Throwable {
        ProceedingJoinPoint joinPoint = mock(ProceedingJoinPoint.class);
        when(joinPoint.proceed())
                .thenThrow(new RuntimeException("Error 1"))
                .thenThrow(new RuntimeException("Error 2"))
                .thenReturn("Success");

        Retryable retryable = getRetryableAnnotation();
        RetryAspect aspect = new RetryAspect();

        Object result = aspect.retryMethod(joinPoint, retryable);

        assertEquals("Success", result);
        verify(joinPoint, times(3)).proceed();
    }

    private Retryable getRetryableAnnotation() throws NoSuchMethodException {
        Method method = QuestionServiceImpl.class.getMethod("findById", UUID.class);
        return method.getAnnotation(Retryable.class);
    }

    @Test
    void shouldThrowAfterMaxAttempts() throws Throwable {
        ProceedingJoinPoint joinPoint = mock(ProceedingJoinPoint.class);
        when(joinPoint.proceed())
                .thenThrow(new RuntimeException("Error"));

        Retryable retryable = getRetryableAnnotation();
        RetryAspect aspect = new RetryAspect();

        assertThrows(RuntimeException.class, () ->
                aspect.retryMethod(joinPoint, retryable));

        verify(joinPoint, times(5)).proceed();
    }

    @Test
    void shouldNotRetryForSpecificException() throws Throwable {
        ProceedingJoinPoint joinPoint = mock(ProceedingJoinPoint.class);
        when(joinPoint.proceed())
                .thenThrow(new IllegalArgumentException("Fatal error"));

        Retryable retryable = mock(Retryable.class);
        when(retryable.maxAttempts()).thenReturn(3);
        when(retryable.noRetryFor()).thenReturn(new Class[]{IllegalArgumentException.class});
        when(retryable.retryFor()).thenReturn(new Class[0]);

        Backoff backoff = mock(Backoff.class);
        when(backoff.delay()).thenReturn(1000L);
        when(backoff.multiplier()).thenReturn(0d);
        when(retryable.backoff()).thenReturn(backoff);

        RetryAspect aspect = new RetryAspect();

        assertThrows(IllegalArgumentException.class, () ->
                aspect.retryMethod(joinPoint, retryable));

        verify(joinPoint, times(1)).proceed();
    }

}
