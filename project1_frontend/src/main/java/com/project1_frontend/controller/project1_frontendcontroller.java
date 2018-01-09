package com.project1_frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project1_frontend.Dao.CategoryDao;
import com.project1_frontend.Service.CustomerService;
import com.project1_frontend.Service.ProductServices;

@Controller
public class project1_frontendcontroller {

	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	CustomerService customerservice;
	@Autowired
	ProductServices productservices;

	@RequestMapping(value= {"/" , "/home" , "/index"})
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("masterpage");
		mv.addObject("title", "Home");
		// passing the list of categories
		mv.addObject("categories", categoryDao.list());
		mv.addObject("userClickHome", true);
		return mv;
	}

	@RequestMapping(value= "/contactus")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("masterpage");
		mv.addObject("title", "ContactUs");
		mv.addObject("userClickContactUs", true);
		return mv;
	}

	@RequestMapping(value= "/aboutus")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("masterpage");
		mv.addObject("title", "AboutUs");
		mv.addObject("userClickAboutUs", true);
		return mv;
	}

	@RequestMapping(value= "/Productlist")
	public ModelAndView productlist() {
		ModelAndView mv = new ModelAndView("masterpage");
		mv.addObject("title", "View All Products");
		mv.addObject("userClickProductlist", true);
		return mv;
	}

}
