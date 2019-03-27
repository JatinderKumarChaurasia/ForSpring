package com.cognizant.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.model.Customer;
import com.cognizant.services.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "/customerSignUp", method = RequestMethod.GET)
	public String callSignUp(@ModelAttribute("customers") Customer customer) {
		return "customerSignUp";
	}

	@RequestMapping(value = "/customerSignUp", method = RequestMethod.POST)
	public String callSignUp(@ModelAttribute("customers") Customer customer, HttpSession session,
			BindingResult result) {
		if (result.hasErrors()) {
			return "redirect:customerSignUp";
		} else {
			customerService.save(customer);
			return "customerTest";
		}
	}
}
