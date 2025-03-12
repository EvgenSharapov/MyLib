package org.example.lib.aspect;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
//Аспект для обработки исключений
public class ExceptionHandlingAspect {

    private static final Logger logger = LoggerFactory.getLogger(ExceptionHandlingAspect.class);

    @AfterThrowing(
            pointcut = "execution(* org.example.lib.service.question.QuestionServiceImpl.*(..))",
            throwing = "ex"
    )
    public void handleException(Exception ex) {
        logger.error("Exception occurred: {}", ex.getMessage());
    }
}