package com.mindtree.zomato.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.zomato.entity.Admin;
import com.mindtree.zomato.repository.AdminRepository;

@Service
public class AdminService {
	
	@Autowired
	private AdminRepository repo;

	public List<Admin> getAdmins() {
		
		return repo.findAll();
	}

}
