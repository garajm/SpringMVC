package sk.garaj.spring.web.springmvc.aspects;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component("logger")
public class Logger {
	
	@Before("execution(* sk.garaj.spring.web.springmvc.services.*.*(..))")
	public void logAction(JoinPoint joinPoint) {
		System.out.println("I'm about to take an action...");
	}
}
