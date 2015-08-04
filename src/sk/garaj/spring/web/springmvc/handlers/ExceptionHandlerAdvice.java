package sk.garaj.spring.web.springmvc.handlers;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionHandlerAdvice {
	@ExceptionHandler(Exception.class)
	public String handleException(Exception e) {
		return "error";
	}
}
