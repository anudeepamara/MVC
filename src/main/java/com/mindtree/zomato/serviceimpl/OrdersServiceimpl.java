package com.mindtree.zomato.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.zomato.repository.OrdersRepository;
import com.mindtree.zomato.service.OrderService;

@Service
public class OrdersServiceimpl implements OrderService{
	
	@Autowired
	private OrdersRepository repo;

}
