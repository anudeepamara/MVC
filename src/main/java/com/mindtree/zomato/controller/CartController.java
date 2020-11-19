package com.mindtree.zomato.controller;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.zomato.entity.Cart;
import com.mindtree.zomato.entity.CartItems;
import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.Restuarent;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.serviceimpl.CartServiceImpl;
import com.mindtree.zomato.serviceimpl.FoodServiceImpl;

@Controller
public class CartController {

	static int userId = 0;

	@Autowired
	private CartServiceImpl service;

	@Autowired
	private FoodServiceImpl foodservice;



	@RequestMapping("/cartlistt")
	public String getCart(Model model, @ModelAttribute(name = "cart") Cart cart) {
		List<Cart> carts1 = service.getAllCart();
		List<Food> carts = new ArrayList<Food>();
		User user = new User();
		userId = new Usercontroller().userId();
		for (Cart c : carts1) {
			if (c.getUser().getUserId() == userId) {
				List<Food> food1 = c.getFood();
				for (Food f : food1) {
					carts.add(f);
				}

			}
		}
		model.addAttribute("carts", carts);

		return "cart";

	}

	@RequestMapping("/cartlist/{foodId}")
	public String getallcarts(@PathVariable int foodId, Model model, @ModelAttribute(name = "cart") Cart cart,
			@ModelAttribute(name = "user") User user) {

		LocalTime time = LocalTime.now();
		cart.setTime(time);
		Cart cart1 = service.addcart(cart, foodId, user);
		CartItems citem = new CartItems();
//		List<Food> food = cart1.getFood();
		userId = new Usercontroller().userId();
		List<Food> food = foodservice.showFoodsbyfoodId(foodId, userId);
		for (Food f : food) {
			citem.setTime(cart.getTime());
			citem.setFoodId(f.getFoodId());
			citem.setFoodName(f.getFoodName());
			citem.setDescription(f.getDescription());
			citem.setPrice(f.getPrice());
			citem.setType(f.getType());
			//citem.setCart(cart1);
			service.addCartItem(citem);
		}

		return "bookingSuccess";

	}

	@RequestMapping("/ordernow")
	public String getOrderPage(Model model) {
		List<Cart> cart = service.getAllCart();
		double sum = 0;
		List<Food> carts = new ArrayList<>();
		User user = new User();
		userId = new Usercontroller().userId();
		for (Cart c : cart)
			if (c.getUser().getUserId() == userId) {
				List<Food> food1 = c.getFood();
				for (Food f : food1) {
					carts.add(f);
				}

			}

		model.addAttribute("carts", carts);
		Cart cart1 = new Cart();
		model.addAttribute("cart1", cart1);

		return "ordernow";

	}

}
