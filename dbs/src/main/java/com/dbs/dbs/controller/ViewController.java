package com.dbs.dbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {
	
	@GetMapping("/")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	@GetMapping("/home")
	public ModelAndView home() {
		return new ModelAndView("home");
	}
	

}
