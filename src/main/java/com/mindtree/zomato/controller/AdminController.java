package com.mindtree.zomato.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.zomato.dto.ErrorDto;
import com.mindtree.zomato.entity.Admin;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.serviceimpl.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	static int adminId =0;
	
	
	@RequestMapping("/admin")
	public String userloginpage(Model model, @ModelAttribute("admin") Admin admin) {
		List<Admin> admins = service.getAdmins();
		for (Admin a : admins) {
			if(a.getAdminName().equals(admin.getAdminName())&& a.getPassword().equals(admin.getPassword())) {

				adminId = a.getAdminId();

				return "adminhomepage";

			} else {
				model.addAttribute("error", new ErrorDto("invalid user and password"));
				return "adminlogin";
			}

		}
		return "errorpage";
	}

}
