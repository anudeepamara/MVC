package com.mindtree.zomato.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.entity.Restuarent;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.serviceimpl.FoodServiceImpl;
import com.mindtree.zomato.serviceimpl.LocationServiceImpl;
import com.mindtree.zomato.serviceimpl.RestuarentServiceImpl;

@Controller
public class RestuarentController {

	static int userId = 0;

	static int id = 0;

	@Autowired
	private LocationServiceImpl locationservice;

	@Autowired
	private RestuarentServiceImpl service;

	@Autowired
	private FoodServiceImpl foodservice;

	@RequestMapping("/restuarent")
	public String getAllrestuarents(Model model) {

		userId = new Usercontroller().userId();

		List<Restuarent> listrest = service.getAllrestuarents(userId);

		model.addAttribute("listrest", listrest);
		return "restuarent";

	}

	@RequestMapping("/newRestuarent")
	public String addRestuarent(@ModelAttribute("restuarent") Restuarent restuarent, Model model) {
		List<Location> listlocations = service.listlocations();
		model.addAttribute("listlocations", listlocations);

		return "New_Restuarent";
	}

	@RequestMapping(value = "/saverestFood", method = RequestMethod.POST)
	public String saveFood(@ModelAttribute("food") Food food, @ModelAttribute("restuarent") Restuarent restuarent,
			@RequestParam("locationId") int locationId, Model model) {

		service.save(restuarent, locationId);

		id = restuarent.getRestuarentId();

		return "dummy1";

	}

	@RequestMapping("/saveFoodtorest")
	public String saveFoodToRest(Model model, @ModelAttribute(name = "food") Food food) {

		service.updateRestaurant(id);
		foodservice.save(food, id);

		return "adminhomepage";

	}

	@RequestMapping("/uploadRestuarentImage")
	public ModelAndView uploadRestuarentImage() {
		ModelAndView mav = new ModelAndView("uploadRestuarentImage");
		List<Restuarent> restuarent = service.getAllRests();
		mav.addObject("restuarent", restuarent);

		return mav;
	}

	@RequestMapping("saverestImage")
	public String saveImage(@RequestParam(value = "restuarentId") int restuarentId,
			@RequestParam(value = "file", required = false, defaultValue = "defaultFile") MultipartFile file) {

		service.saveRestuarents(file, restuarentId);

		return "redirect:/";
	}

	@RequestMapping("/edit")
	public ModelAndView showUpdateFoodPage(@ModelAttribute("restuarent") Restuarent restuarent, Model model) {
		ModelAndView mav = new ModelAndView("edit_Restuarent");

		List<Location> listlocations = service.listlocations();
		model.addAttribute("listlocations", listlocations);

		List<Restuarent> listrestuarent = service.getAllRests();
		model.addAttribute("listrestuarent", listrestuarent);

		return mav;
	}

}
