package com.mindtree.zomato.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.serviceimpl.LocationServiceImpl;

@Controller
public class LocationController {

	@Autowired
	private LocationServiceImpl service;

	@RequestMapping("/loc")
	public String showAddBookPage(@ModelAttribute("location") Location location, Model model) {
		List<Location> listlocations = service.listAll();
		model.addAttribute("listlocations", listlocations);

		return "registration";
	}

}
