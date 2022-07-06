package com.simplilearn.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String Index() {
		return "index";
	}

	@GetMapping("/user")
	public String home() {
		return "user";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@GetMapping("/register1")
	public String register1() {
		return "register1";
	}
	
	@GetMapping("/manager")
	public String Manager() {
		return "manager";
	}

	@GetMapping("/admin")
	public String admin() {
		return "admin";
	}
}
