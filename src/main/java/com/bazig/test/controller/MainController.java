package com.bazig.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
}
