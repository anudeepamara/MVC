package com.mindtree.zomato.serviceimpl;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mindtree.zomato.dto.LogInDto;
import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.entity.Restuarent;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.repository.LocationRepository;
import com.mindtree.zomato.repository.UserRepository;
import com.mindtree.zomato.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository repo;

	@Autowired
	private LocationRepository locrepo;

	@Override
	public void saveUser(User user, int locationID) {
		Location location = locrepo.findById(locationID).orElse(null);
		user.setLocation(location);
		repo.save(user);
	}

	@Override
	public List<User> getUsers() {
		return repo.findAll();
	}

	@Override
	public List<Location> getUsersToUpdate(int userId) {
		List<Location> locations = locrepo.findAll();

		return locations;
	}

	@Override
	public void saveupdatedlocation(int locationId, int userId) {

		User user = repo.findById(userId).orElse(null);
		Location location = locrepo.findById(locationId).orElse(null);

		user.setLocation(location);
		repo.save(user);

	}

	@Override
	public User getuser(int userId) {
		return repo.findById(userId).orElse(null);
	}

	@Override
	public void saveUsers(User user) {

		repo.save(user);
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public void addUser(User user) {

		repo.save(user);

	}

	@Override
	public void deleteUser(int userId) {

		repo.deleteById(userId);
	}

	@Override
	public User getusers(int userId) {
		return repo.findById(userId).orElse(null);
	}

	@Override
	public List<User> getAllUseredits() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public List<User> getallusers() {
		List<User> user1 = repo.findAll();

		return user1;
	}

	@Override
	public void saveusers(MultipartFile file, int userId) {

		try {
			String image = Base64.getEncoder().encodeToString(file.getBytes());
			User user = repo.findById(userId).get();
			user.setImage(image);
			repo.save(user);
		} catch (IOException e) {

		}

	}

}
