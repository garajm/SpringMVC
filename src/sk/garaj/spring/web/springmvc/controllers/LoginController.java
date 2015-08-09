package sk.garaj.spring.web.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("loginController")
public class LoginController {
	
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
}
