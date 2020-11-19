package com.mindtree.zomato.entity;

import java.time.LocalTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cartId;
	private double totalprice;
	private LocalTime time;

	@OneToOne(fetch = FetchType.EAGER)
	private User user;

	@ManyToMany
	private List<Food> food;

	/**
	 * @return the cartId
	 */
	public int getCartId() {
		return cartId;
	}

	/**
	 * @param cartId the cartId to set
	 */
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	/**
	 * @return the totalprice
	 */
	public double getTotalprice() {
		return totalprice;
	}

	/**
	 * @param totalprice the totalprice to set
	 */
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the food
	 */
	public List<Food> getFood() {
		return food;
	}

	/**
	 * @param food the food to set
	 */
	public void setFood(List<Food> food) {
		this.food = food;
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

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", totalprice=" + totalprice + ", time=" + time + ", user=" + user + ", food="
				+ food + "]";
	}

	public Cart(int cartId, double totalprice, LocalTime time, User user, List<Food> food) {
		super();
		this.cartId = cartId;
		this.totalprice = totalprice;
		this.time = time;
		this.user = user;
		this.food = food;
	}

}
