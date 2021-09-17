package com.team4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path= { "/account" })
public class AccountController {
	
	@GetMapping(path= { "/login" })
	public String showLoginForm() {
		
		return "account/login";
	}
	
	@GetMapping(path= { "/register" })
	public String showRegisterForm() {
		
		return "account/register";
	}
}
