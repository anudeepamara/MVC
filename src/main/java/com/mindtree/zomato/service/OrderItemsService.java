package com.mindtree.zomato.service;

import java.util.List;
import java.util.Map;

import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.OrderItems;

public interface OrderItemsService {

	/**
	 * @return This method is used to Get all the Items in the Restaurant.
	 */
	public List<OrderItems> getAllItems();

	/**
	 * @param orderitems
	 * @return  This method is used to Add the items in the Restaurant.
	 */
	public OrderItems additem(OrderItems orderitems);

	/**
	 * @return  This method is used to map the orders into the particular restaurant.
	 */
	public Map<OrderItems, List<Food>> gethistory();

}
