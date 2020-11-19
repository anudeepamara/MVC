package com.mindtree.zomato.entity;

import java.util.List;
import java.util.Map;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.MapKeyColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
public class Orders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderId;
	private double totalprice;

	@ManyToOne
	private User user;

//	@ElementCollection
//	@CollectionTable(name = "FoodDetails", joinColumns = @JoinColumn(name = "order_id"))
//	@MapKeyColumn(nullable = false)
	@ManyToMany(targetEntity = Food.class)
	private List<Food> foodDetails;

	/**
	 * @return the orderId
	 */
	public int getOrderId() {
		return orderId;
	}

	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(int orderId) {
		this.orderId = orderId;
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
	 * @return the foodDetails
	 */
	public List<Food> getFoodDetails() {
		return foodDetails;
	}

	/**
	 * @param foodDetails the foodDetails to set
	 */
	public void setFoodDetails(List<Food> foodDetails) {
		this.foodDetails = foodDetails;
	}

	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", totalprice=" + totalprice + ", user=" + user + ", foodDetails="
				+ foodDetails + "]";
	}

	public Orders(int orderId, double totalprice, User user, List<Food> foodDetails) {
		super();
		this.orderId = orderId;
		this.totalprice = totalprice;
		this.user = user;
		this.foodDetails = foodDetails;
	}

	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}

}
