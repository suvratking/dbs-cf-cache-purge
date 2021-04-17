package com.dbs.dbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {

	@GetMapping("/")
	public ModelAndView login() {
		return new ModelAndView("logins");
	}

	@GetMapping("/logins")
	public ModelAndView loginS() {
		return new ModelAndView("logins");
	}

	@GetMapping("/home")
	public ModelAndView home() {
		return new ModelAndView("home");
	}

	@GetMapping("/logerror")
	public ModelAndView failLogin() {
		return new ModelAndView("logerror");
	}

}
