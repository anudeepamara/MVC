package com.mindtree.zomato.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Restuarent {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int restuarentId;
	private String restuarentName;
	private String City;

	@Lob
	private String image;

	@ManyToOne
	private Location location;

	@JsonIgnore
	@OneToMany(mappedBy = "restuarent", targetEntity = Food.class)
	private List<Food> foods;

	/**
	 * @return the restuarentId
	 */
	public int getRestuarentId() {
		return restuarentId;
	}

	/**
	 * @param restuarentId the restuarentId to set
	 */
	public void setRestuarentId(int restuarentId) {
		this.restuarentId = restuarentId;
	}

	/**
	 * @return the restuarentName
	 */
	public String getRestuarentName() {
		return restuarentName;
	}

	/**
	 * @param restuarentName the restuarentName to set
	 */
	public void setRestuarentName(String restuarentName) {
		this.restuarentName = restuarentName;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return City;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		City = city;
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
	 * @return the location
	 */
	public Location getLocation() {
		return location;
	}

	/**
	 * @param location the location to set
	 */
	public void setLocation(Location location) {
		this.location = location;
	}

	/**
	 * @return the foods
	 */
	public List<Food> getFoods() {
		return foods;
	}

	/**
	 * @param foods the foods to set
	 */
	public void setFoods(List<Food> foods) {
		this.foods = foods;
	}

	@Override
	public String toString() {
		return "Restuarent [restuarentId=" + restuarentId + ", restuarentName=" + restuarentName + ", City=" + City
				+ ", image=" + image + ", location=" + location + ", foods=" + foods + "]";
	}

	public Restuarent(int restuarentId, String restuarentName, String city, String image, Location location,
			List<Food> foods) {
		super();
		this.restuarentId = restuarentId;
		this.restuarentName = restuarentName;
		City = city;
		this.image = image;
		this.location = location;
		this.foods = foods;
	}

	public Restuarent() {
		super();
		// TODO Auto-generated constructor stub
	}

}
