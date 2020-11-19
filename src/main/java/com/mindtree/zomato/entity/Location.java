package com.mindtree.zomato.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Location {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int locationId;
	private String locationName;
	private String locationState;
	private String landmark;
	private String pincode;
	

	@OneToMany(mappedBy = "location", targetEntity = Restuarent.class)
	private List<Restuarent> restuarents;

	/**
	 * @return the locationId
	 */
	public int getLocationId() {
		return locationId;
	}

	/**
	 * @param locationId the locationId to set
	 */
	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}

	/**
	 * @return the locationName
	 */
	public String getLocationName() {
		return locationName;
	}

	/**
	 * @param locationName the locationName to set
	 */
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	/**
	 * @return the restuarents
	 */
	public List<Restuarent> getRestuarents() {
		return restuarents;
	}

	/**
	 * @param restuarents the restuarents to set
	 */
	public void setRestuarents(List<Restuarent> restuarents) {
		this.restuarents = restuarents;
	}

	public Location(int locationId, String locationName, List<Restuarent> restuarents) {
		super();
		this.locationId = locationId;
		this.locationName = locationName;
		this.restuarents = restuarents;
	}

	public Location() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Location [locationId=" + locationId + ", locationName=" + locationName + ", restuarents=" + restuarents
				+ "]";
	}

}
