package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Aspect
@Component
//Аспект для управления транзакциями
public class TransactionAspect {

    @Around("execution(* org.example.lib.service.question.QuestionServiceImpl.*(..)) && " +
            "@annotation(transactional)")
    public Object manageTransaction(ProceedingJoinPoint joinPoint, Transactional transactional) throws Throwable {
        try {
            return joinPoint.proceed();
        } catch (Exception e) {
            throw e;
        }
    }
}