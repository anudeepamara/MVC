package com.mindtree.zomato.serviceimpl;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.entity.Restuarent;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.repository.LocationRepository;
import com.mindtree.zomato.repository.RestuarentRepository;
import com.mindtree.zomato.repository.UserRepository;
import com.mindtree.zomato.service.RestuarentService;

@Service
public class RestuarentServiceImpl implements RestuarentService {

	@Autowired
	private RestuarentRepository repo;

	@Autowired
	private UserRepository userrepo;

	@Autowired
	private LocationRepository locrepo;

	@Override
	public List<Restuarent> getAllLocations() {
		return repo.findAll();
	}

	@Override
	public List<Restuarent> getAllrestuarents(int userId) {

		List<Restuarent> rest = repo.findAll();
		User user = userrepo.findById(userId).orElse(null);
		List<Restuarent> rest1 = rest.stream()
				.filter(e -> e.getLocation().getLocationId() == user.getLocation().getLocationId())
				.collect(Collectors.toList());

		return rest1;

	}

	@Override
	public List<Location> listlocations() {
		// TODO Auto-generated method stub
		return locrepo.findAll();
	}

	@Override
	public void save(Restuarent restuarent, int locationId) {
		Location location = locrepo.findById(locationId).orElse(null);
		restuarent.setLocation(location);
		repo.save(restuarent);
	}

	@Override
	public List<Restuarent> getAllRests() {
		List<Restuarent> rest = repo.findAll();
		return rest;
	}

	@Override
	public void saveRestuarents(MultipartFile file, int restuarentId) {
		try {
			String image = Base64.getEncoder().encodeToString(file.getBytes());
			Restuarent restuarent = repo.findById(restuarentId).get();
			restuarent.setImage(image);
			repo.save(restuarent);
		} catch (IOException e) {

		}
	}

	@Override
	public Restuarent getrests(int restuarentId) {
		return repo.findById(restuarentId).get();
	}

	@Override
	public void save(Restuarent restuarent) {

		repo.save(restuarent);
	}

	@Override
	public void updateRestaurant(int id) {

		repo.findById(id);
	}

}
