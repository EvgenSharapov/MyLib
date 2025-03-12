package org.example.lib.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.example.lib.model.Question;
import org.springframework.stereotype.Component;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.Validator;

//@Aspect
//@Component
////Аспект для валидации входных данных
//public class ValidationAspect {
//
//    private final Validator validator;
//
//    public ValidationAspect(Validator validator) {
//        this.validator = validator;
//    }
//
//    @Before("execution(* org.example.lib.service.question.QuestionServiceImpl.*(..)) && " +
//            "args(question)")
//    public void validateInput(JoinPoint joinPoint, Question question) {
//        BeanPropertyBindingResult bindingResult = new BeanPropertyBindingResult(question, "question");
//        validator.validate(question, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            throw new IllegalArgumentException("Invalid input: " + bindingResult.getAllErrors());
//        }
//    }
//}