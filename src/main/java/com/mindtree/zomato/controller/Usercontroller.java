package com.mindtree.zomato.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.zomato.dto.ErrorDto;
import com.mindtree.zomato.dto.LogInDto;
import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.entity.Restuarent;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.serviceimpl.FoodServiceImpl;
import com.mindtree.zomato.serviceimpl.LocationServiceImpl;
import com.mindtree.zomato.serviceimpl.UserServiceImpl;

@Controller
public class Usercontroller {

	static int userId = 0;
	
	static int k=0;

	@Autowired
	private SmtpMailSender smtpMailSender;

	@Autowired
	private UserServiceImpl userService;

	@Autowired
	private LocationServiceImpl locationservice;

	@Autowired
	private FoodServiceImpl foodservice;

	@RequestMapping("/viewsetting")
	public String SettingsPage() {
		return "settings";
	}

	@RequestMapping("register")
	public ModelAndView newUser(Model model) {
		ModelAndView mav = new ModelAndView("register");
		User user = new User();
		mav.addObject("user", user);

		List<Location> listlocations = locationservice.listAll();
		model.addAttribute("listlocations", listlocations);

//		List<Food> listfood = foodservice.listAll();
//		model.addAttribute("listfood", listfood);

		return mav;

	}

	@RequestMapping("/userlogin")
	public String nextpage(Model model, @ModelAttribute(name = "user") User user) {
		return "userlogin";
	}

	@RequestMapping(value = "/login")
	public String userloginpage(Model model, @ModelAttribute("user") User user) {
		List<User> users = userService.getUsers();

		List<User> us = new ArrayList<User>();
		System.out.println(user.getName() + user.getPassword());

		List<User> user1 = users.stream()
				.filter(e -> e.getUsername().equals(user.getUsername()) && e.getPassword().equals(user.getPassword()))
				.collect(Collectors.toList());

		for (User u : user1) {

			if ((u.getUsername().equals(user.getUsername()) && u.getPassword().equals(user.getPassword()))) {

				userId = u.getUserId();

				if (u.getRole().equalsIgnoreCase("admin")) {
					for (User us1 : users) {
						if (us1.getUserId() == userId) {
							us.add(us1);
						}
					}
					model.addAttribute("us", us);
					return "adminhomepage";
				} else {

					for (User us1 : users) {
						if (us1.getUserId() == userId) {
							us.add(us1);
						}
					}
					model.addAttribute("us", us);

					return "homepage";
				}

			} else {
				model.addAttribute("error", new ErrorDto("invalid user and password"));
				return "userlogin";
			}
		}
		return "userlogin";
	}

	@RequestMapping("saveUser")
	public String saveUser(@ModelAttribute User user, @RequestParam("locationId") int locationId,
			@RequestParam(value = "file", required = false, defaultValue = "defaultFile") MultipartFile file) {

		userService.saveUser(user, locationId);
		userService.saveusers(file, userId);

		return "redirect:/";

	}

	@RequestMapping("/updatestate")
	public String updateState(Model model) {

		model.addAttribute("user", userService.getUsersToUpdate(userId));

		model.addAttribute("location", userService.getuser(userId));

		return "updatelocations";

	}

	@RequestMapping("/savestate")
	public String savelocation(@RequestParam("locationId") int locationId) {

		userService.saveupdatedlocation(locationId, userId);
		return "redirect:homepage";
	}

	@RequestMapping("/newpasswords")
	public String newpass(Model model) {

//		model.addAttribute("user", userService.getuser(userId));
		return "password";

	}


	@RequestMapping("/savepassword")
	public String updatePassword(Model model, @ModelAttribute(name = "user") User user) {

		userId = new Usercontroller().userId();
		List<User> users = userService.getAllUser();
		for (User u : users) {
			if (u.getUserId() == userId) {

				u.setPassword(user.getPassword());

			}
		}
		userService.addUser(user);
		userService.deleteUser(user.getUserId());

		return "redirect:/";

	}

	@RequestMapping("/edituser")
	public String editUserPage(Model model, @ModelAttribute(name = "user") User user) {
		List<User> users = userService.getAllUser();
		model.addAttribute("users", users);

		return "userdetailsedit";

	}

	@RequestMapping("/updateuser")
	public String updateUser(Model model, @ModelAttribute(name = "user") User user) throws MessagingException {

//		userId = new Usercontroller().userId();
		List<User> users = userService.getAllUser();

		for (User u : users) {
			System.out.println(u.getUsername());
			if (u.getUserId() == user.getUserId()) {
//			if (u.getUsername().equalsIgnoreCase(user.getUsername())) {
				System.out.println(user.getUsername());

				u.setName(user.getName());
				u.setEmail(user.getEmail());
				u.setPassword(user.getPassword());
				u.setType(user.getType());
				u.setRole(user.getRole());
				userService.addUser(u);
				
				k= u.getUserId();
				
				return "redirect:/send-mail";
			}
		}
		

		return "redirect:/send-mail";
	}

	public int userId() {
		return userId;
	}


	@RequestMapping("/uploaduserImage")
	public ModelAndView uploadUserImage() {
		ModelAndView mav = new ModelAndView("uploaduserImage");
		List<User> users = userService.getallusers();
		mav.addObject("users", users);

		return mav;
	}

	@RequestMapping("saveuserImage")
	public String saveImage(@RequestParam(value = "userId") int userId,
			@RequestParam(value = "file", required = false, defaultValue = "defaultFile") MultipartFile file) {

		userService.saveusers(file, userId);

		return "redirect:/uploaduserImage";
	}



}
