package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Collection;

@Aspect
@Component
//Аспект для логирования
public class LoggingAspect {

    private static final Logger logger = LoggerFactory.getLogger(LoggingAspect.class);



    @Around("execution(* org.example.lib.service.question.QuestionServiceImpl.*(..))")
    public Object logMethodCall(ProceedingJoinPoint joinPoint) throws Throwable {
        String methodName = joinPoint.getSignature().getName();
        logger.info("Method {} called with arguments: {}", methodName, joinPoint.getArgs());

        try {
            Object result = joinPoint.proceed();

            if (result instanceof Collection) {
                int count = ((Collection<?>) result).size();
                logger.info("Method {} returned {} objects", methodName, count);
            } else {
                logger.info("Method {} returned: {}", methodName, result);
            }

            return result;
        } catch (Exception e) {
            logger.error("Exception in method {}: {}", methodName, e.getMessage());
            throw e;
        }
    }
}