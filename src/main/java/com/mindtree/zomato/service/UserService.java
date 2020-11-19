package com.mindtree.zomato.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.entity.User;

public interface UserService {

	/**
	 * @param user
	 * @param locationID
	 */
	public void saveUser(User user, int locationID);

	/**
	 * @return This Method is used to get al the users.
	 */
	public List<User> getUsers();

	/**
	 * @param userId 
	 * @return This method is used to get all the users and we can update the users as per requirment.
	 */
	public List<Location> getUsersToUpdate(int userId);

	/**
	 * @param locationId
	 * @param userId
	 */
	public void saveupdatedlocation(int locationId, int userId);

	/**
	 * @param userId
	 * @return This method is used to get all the users based on userId.
	 */
	public User getuser(int userId);

	/**
	 * @param user
	 */
	public void saveUsers(User user);

	/**
	 * @return
	 */
	public List<User> getAllUser();

	/**
	 * @param user
	 */
	public void addUser(User user);

	/**
	 * @param userId
	 */
	public void deleteUser(int userId);

	/**
	 * @param userId
	 * @return This method is used to get all the users based on userId.
	 */
	public User getusers(int userId);

	/**
	 * @return This method is used to get all the users and we can edit them.
	 */
	public List<User> getAllUseredits();

	/**
	 * @return This method is used to get all the users.
	 */
	public List<User> getallusers();

	/**
	 * @param file
	 * @param userId
	 */
	public void saveusers(MultipartFile file, int userId);

}
