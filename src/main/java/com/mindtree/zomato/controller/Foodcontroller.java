package com.mindtree.zomato.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.mindtree.zomato.serviceimpl.CartServiceImpl;
import com.mindtree.zomato.serviceimpl.FoodServiceImpl;

@Controller
public class Foodcontroller {

	static int userId = 0;

	@Autowired
	private FoodServiceImpl service;

	@Autowired
	private CartServiceImpl cartService;;

	@RequestMapping("/foodlist/{restuarentId}")
	public String getallfoods(@PathVariable int restuarentId, Model model,
			@ModelAttribute(name = "food") Restuarent restuarent) {

		List<Food> listfood = service.getallfoods(restuarentId);
		model.addAttribute("listfood", listfood);

		return "food";
	}

	@RequestMapping("/delete/{foodId}")
	public String deleteitems(@PathVariable int foodId) {

		cartService.deleteFood(foodId);

		return "redirect:/homepage";

	}

	@RequestMapping("/uploadFoodImage")
	public ModelAndView UploadFoodImage() {
		ModelAndView mav = new ModelAndView("uploadFoodImage");
		List<Food> foods = service.getAllfoods();
		mav.addObject("foods", foods);

		return mav;
	}

	@RequestMapping("saveImage")
	public String saveImage(@RequestParam(value = "foodId") int foodId,
			@RequestParam(value = "file", required = false, defaultValue = "defaultFile") MultipartFile file) {

		service.saveFood(file, foodId);

		return "redirect:/uploadFoodImage";
	}



	@RequestMapping("/newFood")
	public String showAddBookPage(@ModelAttribute("food") Food food, Model model) {
		List<Restuarent> listrestuarent = service.listAllrests();
		model.addAttribute("listrestuarent", listrestuarent);

		return "New_Food";
	}
	

	@RequestMapping(value = "/saveFood", method = RequestMethod.POST)
	public String saveFood(@ModelAttribute("food") Food food, @RequestParam("restuarentId") int restuarentId, Model model) {
		service.save(food, restuarentId);

		return "redirect:/";

	}
	
	

	@RequestMapping("/editfood")
	public ModelAndView showUpdateFoodPage(@ModelAttribute("food") Food food, Model model) {
		
		ModelAndView mav = new ModelAndView("edit_food");
		
		List<Restuarent> listrestuarent = service.listAllrests();
		model.addAttribute("listrestuarent", listrestuarent);

		
		List<Food> foods = service.getAllFoods();
		model.addAttribute("foods", foods);

		return mav;
	}

	

	
}
