package com.cognizant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller

public class StartupController {

	@RequestMapping("/customerSignUp")
	public String sayHello(Model model)
	{
		return "customerSignUp";
	}
}
