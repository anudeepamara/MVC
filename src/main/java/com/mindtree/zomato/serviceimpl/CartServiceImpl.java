package com.mindtree.zomato.serviceimpl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.zomato.entity.Cart;
import com.mindtree.zomato.entity.CartItems;
import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.Restuarent;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.repository.CartItemsRepository;
import com.mindtree.zomato.repository.CartRepsoitory;
import com.mindtree.zomato.repository.FoodRepository;
import com.mindtree.zomato.repository.UserRepository;
import com.mindtree.zomato.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartRepsoitory repo;

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private FoodRepository foodRepo;

	@Autowired
	private CartItemsRepository irepo;

	@Override
	public List<Food> getallcarts(int foodId) {
		Cart cart = repo.findById(foodId).orElse(null);
		List<Food> foods = cart.getFood();

		return foods;
	}

	@Override
	public List<Cart> getAllCart() {
		return repo.findAll();
	}

	@Override
	public void deleteFood(int foodId) {

		List<Cart> carts = repo.findAll();
		for (Cart c : carts) {
			List<Food> foods = c.getFood();
			for (Food f : foods) {

				System.out.println(f.getFoodId());
				if (f.getFoodId() == foodId) {

					System.out.println(c.getCartId());
					repo.deleteById(c.getCartId());
				}
			}
		}
	}

	@Override
	public List<CartItems> getallCartItems() {

		List<CartItems> cartitems = irepo.findAll();
		return cartitems;
	}

	@Override
	public void deletecart() {

		repo.deleteAll();
	}

	@Override
	public Cart addcart(Cart cart, int foodId, User user) {

		return cart;
	}

	@Override
	public CartItems addCartItem(CartItems citem) {

		return irepo.save(citem);
	}

	@Override
	public void deletebyId(int cartItemId) {
		irepo.deleteById(cartItemId);
	}

	@Override
	public void addcart(Cart c1) {

		repo.save(c1);

	}

}
