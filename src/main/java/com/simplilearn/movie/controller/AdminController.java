package com.simplilearn.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {

	@PostMapping("/login")
	public String Admin() {
		return "admin";
	}

	@PostMapping("/alogin")
	public String Index() {
		return "alogin";
	}
	
	@GetMapping("/adminHome")
	public String Home() {
		return "adminHome";
	}
	
	@GetMapping("/addManager")
	public String AddMember() {
		return "addManager";
	}
}
