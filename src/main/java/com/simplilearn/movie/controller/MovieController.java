package com.simplilearn.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MovieController {

	@PostMapping("/searchMovie")
	public String searchMovie() {
		return "searchMovie";
	}
	
	@PostMapping("/screendata3")
	public String screendata3() {
		return "screendata3";
	}
	
	@GetMapping("/screendata2")
	public String screendata2() {
		return "screendata2";
	}
	
	@GetMapping("/screenseats2")
	public String screenseats2() {
		return "screenseats2";
	}
	
	@PostMapping("/screenseats3")
	public String screenseats3() {
		return "screenseats";
	}

	@GetMapping("/addtheater")
	public String addtheater() {
		return "addtheater";
	}
	
	@PostMapping("/addtheater2")
	public String addtheater2() {
		return "addtheater2";
	}
	
	@GetMapping("/bookticket")
	public String bookTicket() {
		return "bookTicket";
	}
}
