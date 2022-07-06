package com.simplilearn.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

	@GetMapping("/userHome")
	public String userHome() {
		return "userHome";
	}

	@GetMapping("/bookTickets")
	public String bookTickets() {
		return "bookTickets";
	}
	
	@PostMapping("/search1")
	public String search1() {
		return "search1";
	}
	
	@GetMapping("/ticket")
	public String ticket() {
		return "ticket";
	}
	
	@PostMapping("/book")
	public String book() {
		return "book";
	}

	@GetMapping("/subscribe")
	public String subscribe() {
		return "subscribe";
	}
	
	@PostMapping("/subscribe2")
	public String subscribe2() {
		return "subscribe2";
	}
	
	@GetMapping("/payment")
	public String payment() {
		return "payment";
	}

	@PostMapping("/paymentaction")
	public String paymentaction() {
		return "paymentaction";
	}
	
	@PostMapping("/ulogin")
	public String ulogin() {
		return "ulogin";
	}
}
