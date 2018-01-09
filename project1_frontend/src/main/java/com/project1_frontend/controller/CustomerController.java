package com.project1_frontend.controller;

import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project1_frontend.Service.CustomerService;
import com.project1_frontend.model.BillingAddress;
import com.project1_frontend.model.Customer;
import com.project1_frontend.model.ShippingAddress;
import com.project1_frontend.model.User;

@Controller
public class CustomerController {
	@Autowired
private CustomerService customerService;
@RequestMapping(value="/all/SignUp") 	
public    ModelAndView  getRegistrationForm(){
	BillingAddress billingaddress = new BillingAddress();
	ShippingAddress shippingaddress = new ShippingAddress();
	User user =new User();
	Customer customer=new Customer();
	customer.setUser(user);
	customer.setShippingaddress(shippingaddress);
	customer.setBillingaddress(billingaddress);
	
	return new ModelAndView("SignUp","customer",customer);
}
@RequestMapping(value="/all/SignUp", method=RequestMethod.POST)
public String registerCustomer(@Valid @ModelAttribute Customer customer,BindingResult result,Model model){
	if(result.hasErrors())//hibernate validation
		return "SignUp";
	if(!customerService.isUsernameValid(customer.getUser().getUsername())){//duplicate username
		model.addAttribute("duplicateUsername","Username already exists.. please enter different username");
		return "SignUp";
	}
	if(!customerService.isEmailValid(customer.getEmail())){//duplicate email address
		model.addAttribute("duplicateEmail","Email Id already exists.. Please enter different email address");
		return "SignUp";
	}
	
	customerService.registerCustomer(customer);//valid 
	return "SignUp";
}
}