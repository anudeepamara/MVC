package com.mindtree.zomato.entity;

import java.time.LocalDate;
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

@Entity
public class OrderItems {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderItemId;

	private LocalDate date;

	private LocalTime time;

	@ManyToMany
	private List<Food> food;

	@ManyToOne(fetch = FetchType.EAGER)
	private Restuarent restuarent;

	@ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL )
	private User user;

	/**
	 * @return the orderItemId
	 */
	public int getOrderItemId() {
		return orderItemId;
	}

	/**
	 * @param orderItemId the orderItemId to set
	 */
	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
	}

	/**
	 * @return the date
	 */
	public LocalDate getDate() {
		return date;
	}

	/**
	 * @param date the date to set
	 */
	public void setDate(LocalDate date) {
		this.date = date;
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
	 * @return the restuarent
	 */
	public Restuarent getRestuarent() {
		return restuarent;
	}

	/**
	 * @param restuarent the restuarent to set
	 */
	public void setRestuarent(Restuarent restuarent) {
		this.restuarent = restuarent;
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

	public OrderItems(int orderItemId, LocalDate date, LocalTime time, List<Food> food, Restuarent restuarent,
			User user) {
		super();
		this.orderItemId = orderItemId;
		this.date = date;
		this.time = time;
		this.food = food;
		this.restuarent = restuarent;
		this.user = user;
	}

	public OrderItems() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "OrderItems [orderItemId=" + orderItemId + ", date=" + date + ", time=" + time + ", food=" + food
				+ ", restuarent=" + restuarent + ", user=" + user + "]";
	}

}
