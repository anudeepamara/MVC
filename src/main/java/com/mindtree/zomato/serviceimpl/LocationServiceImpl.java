package com.mindtree.zomato.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.repository.LocationRepository;
import com.mindtree.zomato.service.LocationService;

@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationRepository repo;


	@Override
	public List<Location> listAll() {
		return repo.findAll();
	}

}
