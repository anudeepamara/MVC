package com.mindtree.zomato;

import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.mindtree.zomato.controller.CartController;
import com.mindtree.zomato.repository.CartItemsRepository;
import com.mindtree.zomato.serviceimpl.CartItemsServiceImpl;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CartServiceImplTest {
	
	@InjectMocks
	private CartController controller;
	
	@InjectMocks
	private CartItemsServiceImpl service;
	
	@Mock
	private CartItemsRepository repo;

}
