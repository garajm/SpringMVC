package sk.garaj.spring.web.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sk.garaj.spring.web.springmvc.dao.User;

@Controller("loginController")
public class LoginController {
	
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	@RequestMapping("newAccount")
	public String addAccount(Model model) {
		
		model.addAttribute("user", new User());
		
		return "newAccount";
	}
	
	@RequestMapping("accountCreated")
	public String createAccount() {
		return "accountCreated";
	}
}
