package com.mindtree.zomato.entity;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Controller;

@Entity
public class CartItems {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cartItemId;
	private int foodId;
	private String foodName;

	private String description;
	private double price;
	private String type;

	private LocalTime time;

	@ManyToOne(cascade = CascadeType.ALL)
	private Cart cart;

	/**
	 * @return the cartItemId
	 */
	public int getCartItemId() {
		return cartItemId;
	}

	/**
	 * @param cartItemId the cartItemId to set
	 */
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}

	/**
	 * @return the foodId
	 */
	public int getFoodId() {
		return foodId;
	}

	/**
	 * @param foodId the foodId to set
	 */
	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}

	/**
	 * @return the foodName
	 */
	public String getFoodName() {
		return foodName;
	}

	/**
	 * @param foodName the foodName to set
	 */
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the time
	 */
	public LocalTime getTime() {
		return time;
	}

	/**
	 * @param time the time to set
	 */
	public void setTime(LocalTime time) {
		this.time = time;
	}

	/**
	 * @return the cart
	 */
	public Cart getCart() {
		return cart;
	}

	/**
	 * @param cart the cart to set
	 */
	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public CartItems(int cartItemId, int foodId, String foodName, String description, double price, String type,
			LocalTime time, Cart cart) {
		super();
		this.cartItemId = cartItemId;
		this.foodId = foodId;
		this.foodName = foodName;
		this.description = description;
		this.price = price;
		this.type = type;
		this.time = time;
		this.cart = cart;
	}

	@Override
	public String toString() {
		return "CartItems [cartItemId=" + cartItemId + ", foodId=" + foodId + ", foodName=" + foodName
				+ ", description=" + description + ", price=" + price + ", type=" + type + ", time=" + time + ", cart="
				+ cart + "]";
	}

	public CartItems() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
