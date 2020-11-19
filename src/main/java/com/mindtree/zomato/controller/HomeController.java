package com.mindtree.zomato.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.zomato.entity.Admin;
import com.mindtree.zomato.serviceimpl.UserServiceImpl;

@Controller
public class HomeController {

	@Autowired
	private UserServiceImpl userService;

	@RequestMapping("/")
	public String mainpage() {

		return "index";
	} 

	@RequestMapping("/adminlogin")
	public String Adminlogin(Model model) {
		Admin admin = new Admin();
		model.addAttribute("admin", admin);
		return "adminlogin";
	}



	@RequestMapping("homepage")
	public ModelAndView goHome() {
		ModelAndView mav = new ModelAndView("homepage");
		return mav;
	}

	@RequestMapping("/support")
	public ModelAndView support() {
		ModelAndView mav = new ModelAndView("dummy");
		return mav;
	}
	
	@RequestMapping("/aboutus")
	public ModelAndView AboutUs() {
		ModelAndView mav = new ModelAndView("aboutus");
		return mav;
	}
	


}
