package com.simplilearn.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ManagerController {


	@PostMapping("/managerreg")
	public String ManagerRegister() {
		return "managerreg";
	}
	
	@PostMapping("/mlogin")
	public String Admin() {
		return "mlogin";
	}
	
	@GetMapping("/mhome")
	public String mHome() {
		return "mhome";
	}
	
	@GetMapping("/screensdata")
	public String screensdata() {
		return "screensdata";
	}
	
	@GetMapping("/screenseats")
	public String screenseats() {
		return "screenseats";
	}
	
	@GetMapping("/movieadd")
	public String movieadd() {
		return "movieadd";
	}
	
	@PostMapping("/movieadd2")
	public String movieadd2() {
		return "movieadd2";
	}

}
