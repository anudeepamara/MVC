package com.mindtree.zomato.serviceimpl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mindtree.zomato.entity.Cart;
import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.entity.Restuarent;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.repository.CartRepsoitory;
import com.mindtree.zomato.repository.FoodRepository;
import com.mindtree.zomato.repository.LocationRepository;
import com.mindtree.zomato.repository.RestuarentRepository;
import com.mindtree.zomato.repository.UserRepository;
import com.mindtree.zomato.service.FoodService;

@Service
public class FoodServiceImpl implements FoodService {

	@Autowired
	private FoodRepository repo;

	@Autowired
	private CartRepsoitory cartrepo;

	@Autowired
	private RestuarentRepository restRepo;

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private LocationRepository locrepo;

	@Override
	public List<Food> listAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public List<Food> getallfoods(int restuarentId) {
		Restuarent rest = restRepo.findById(restuarentId).orElse(null);
		List<Food> foods = rest.getFoods();

		return foods;
	}

	@Override
	public List<Food> showFoodsbyfoodId(int foodId, int userId) {
		Food food = repo.findById(foodId).orElse(null);
		List<Food> foods = new ArrayList<Food>();

		User users = new User();
		User user = userRepo.findById(userId).orElse(null);

		foods.add(food);
		Cart cart = new Cart();
		cart.setUser(user);
		cart.setFood(foods);
		cart.setTotalprice(food.getPrice());
		Cart cart1 = cartrepo.save(cart);

		return foods;
	}

	@Override
	public Cart getallcarts(int foodId, int userId) {

		return null;
	}

	@Override
	public void saveFood(MultipartFile file, int foodId) {

		try {
			String image = Base64.getEncoder().encodeToString(file.getBytes());
			Food food = repo.findById(foodId).get();
			food.setImage(image);
			repo.save(food);
		} catch (IOException e) {

		}
	}

	@Override
	public List<Food> getAllfoods() {
		List<Food> flist = repo.findAll();
		return flist;
	}

	@Override
	public void save(Food food) {
		repo.save(food);
	}

	@Override
	public List<Restuarent> listAllrests() {
		// TODO Auto-generated method stub
		return restRepo.findAll();
	}

	@Override
	public void save(Food food, int restuarentId) {
		Restuarent restuarent = restRepo.findById(restuarentId).orElse(null);
		food.setRestuarent(restuarent);
		repo.save(food);
	}

	@Override
	public List<Food> getAllFoods() {
		List<Food> foods = repo.findAll();
		return foods;
	}

	@Override
	public List<Restuarent> getAllRests() {
		return restRepo.findAll();
	}
}
