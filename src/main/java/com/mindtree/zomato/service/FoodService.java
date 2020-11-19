package com.mindtree.zomato.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mindtree.zomato.entity.Cart;
import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.Restuarent;

public interface FoodService {

	/**
	 * @return  This method is used to Get all the Foods.
	 */
	public List<Food> listAll();

	/**
	 * @param restu  This method is used to Get all Foods based on the RestuarentId.
	 * @return
	 */
	public List<Food> getallfoods(int restuarentId);

	/**
	 * @param foodId
	 * @param userId
	 * @return  This method is used to Show the foods based on foodId.
	 */
	public List<Food> showFoodsbyfoodId(int foodId, int userId);

	/**
	 * @param foodId
	 * @param userId
	 * @return  This method is used to Get all the Carts based on the userId.
	 */
	public Cart getallcarts(int foodId, int userId);

	/**
	 * @param file
	 * @param foodId
	 */
	public void saveFood(MultipartFile file, int foodId);

	/**
	 * @return  This method is used to Get all the Foods.
	 */
	public List<Food> getAllfoods();

	/**
	 * @param food
	 */
	public void save(Food food);

	/**
	 * @return  This method is used to Get all the restaurants.
	 */
	public List<Restuarent> listAllrests();

	/**
	 * @param food
	 * @param restuarentId
	 */
	public void save(Food food, int restuarentId);

	/**
	 * @return  This method is used to Get all the Foods.
	 */
	public List<Food> getAllFoods();

	/**
	 * @return  This method is used to Get all the Restaurants.
	 */
	public List<Restuarent> getAllRests();

}
