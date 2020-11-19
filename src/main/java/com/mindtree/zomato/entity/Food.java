package com.mindtree.zomato.entity;

import java.util.Arrays;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.mysql.jdbc.Blob;

@Entity
public class Food {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int foodId;
	private String foodName;

	@Lob
	private String image;
	
	private String description;
	private double price;
	private String type;
	private String topings;

	@ManyToOne
	private Restuarent restuarent;

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
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
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
	 * @return the topings
	 */
	public String getTopings() {
		return topings;
	}

	/**
	 * @param topings the topings to set
	 */
	public void setTopings(String topings) {
		this.topings = topings;
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

	@Override
	public String toString() {
		return "Food [foodId=" + foodId + ", foodName=" + foodName + ", image=" + image + ", description=" + description
				+ ", price=" + price + ", type=" + type + ", topings=" + topings + ", restuarent=" + restuarent + "]";
	}

	public Food(int foodId, String foodName, String image, String description, double price, String type,
			String topings, Restuarent restuarent) {
		super();
		this.foodId = foodId;
		this.foodName = foodName;
		this.image = image;
		this.description = description;
		this.price = price;
		this.type = type;
		this.topings = topings;
		this.restuarent = restuarent;
	}

	public Food() {
		super();
		// TODO Auto-generated constructor stub
	}

}
