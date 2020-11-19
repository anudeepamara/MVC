package com.mindtree.zomato.service;

import java.util.List;

import com.mindtree.zomato.entity.Cart;
import com.mindtree.zomato.entity.CartItems;
import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.User;

public interface CartService {

	/**
	 * @param foodId
	 * @return  This method is used to Get all the Carts Based on the foodId.
	 */
	public List<Food> getallcarts(int foodId);

	/**
	 * @return   This method is used to Get all the Carts.
	 */
	public List<Cart> getAllCart();

	/**
	 * @param foodId
	 */
	public void deleteFood(int foodId);

	/**
	 * @return
	 */
	public List<CartItems> getallCartItems();

	/**
	 *  return  This method is used to delete the parti9cullar vcart.
	 */
	public void deletecart();

	/**
	 * @param cart
	 * @param foodId
	 * @param user
	 * @return  This method is used to add the cart based on foodId and FoodId.
	 */
	public Cart addcart(Cart cart, int foodId, User user);

	/**
	 * @param citem
	 * @return
	 */
	public CartItems addCartItem(CartItems citem);

	/**
	 * @param cartItemId
	 */
	public void deletebyId(int cartItemId);

	/**
	 * @param c1
	 */
	public void addcart(Cart c1);

}
