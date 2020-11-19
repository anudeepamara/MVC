package com.mindtree.zomato.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.zomato.repository.CartItemsRepository;
import com.mindtree.zomato.service.CartItemsService;

@Service
public class CartItemsServiceImpl implements CartItemsService {

	@Autowired
	private CartItemsRepository repo;

	
}
