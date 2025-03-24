package org.example.lib.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Aspect
@Component
@Order(1)
public class TransactionAspect {

    private final PlatformTransactionManager transactionManager;

    public TransactionAspect(PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;
    }

    @Around("@annotation(transactional) && !@annotation(org.springframework.validation.annotation.Validated)")
    public Object manageTransaction(ProceedingJoinPoint joinPoint, Transactional transactional) throws Throwable {
        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
        def.setPropagationBehavior(transactional.propagation().value());
        def.setIsolationLevel(transactional.isolation().value());
        def.setTimeout(transactional.timeout());
        def.setReadOnly(transactional.readOnly());

        TransactionStatus status = transactionManager.getTransaction(def);
        System.out.println("Транзакция через аспект");

        try {
            Object result = joinPoint.proceed();

            transactionManager.commit(status);
            return result;

        } catch (Exception ex) {
            if (shouldRollback(transactional, ex)) {
                transactionManager.rollback(status);
            } else {
                transactionManager.commit(status);
            }
            throw ex;
        }
    }


    private boolean shouldRollback(Transactional transactional, Exception ex) {
        for (Class<?> rollbackEx : transactional.rollbackFor()) {
            if (rollbackEx.isInstance(ex)) {
                return true;
            }
        }

        for (Class<?> noRollbackEx : transactional.noRollbackFor()) {
            if (noRollbackEx.isInstance(ex)) {
                return false;
            }
        }

        return ex instanceof RuntimeException;
    }
}