package com.mindtree.zomato.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.entity.Restuarent;

public interface RestuarentService {

	/**
	 * @return This method is used to get all the restaurants based on locations.
	 */
	public List<Restuarent> getAllLocations();

	/**
	 * @param userId
	 * @return This method is used to get all the Restaurants .
	 */
	public List<Restuarent> getAllrestuarents(int userId);

	/**
	 * @return
	 */
	public List<Location> listlocations();

	/**
	 * @param restuarent
	 * @param locationId
	 */
	public void save(Restuarent restuarent, int locationId);

	/** 
	 * @return This method is used to Get all the Restaurants.
	 */
	public List<Restuarent> getAllRests();

	/**
	 * @param file
	 * @param restuarentId
	 */
	public void saveRestuarents(MultipartFile file, int restuarentId);

	/**
	 * @param restuarentId
	 * @return This method is used to Get all the Restaurants based on RestuarentId.
	 */
	public Restuarent getrests(int restuarentId);

	/**
	 * @param restuarent
	 */
	public void save(Restuarent restuarent);

	/**
	 * @param id
	 */
	public void updateRestaurant(int id);

}
