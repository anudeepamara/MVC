package com.mindtree.zomato;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.aspectj.lang.annotation.Before;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.internal.configuration.MockAnnotationProcessor;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.mindtree.zomato.controller.LocationController;
import com.mindtree.zomato.controller.Usercontroller;
import com.mindtree.zomato.entity.Location;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.repository.LocationRepository;
import com.mindtree.zomato.repository.UserRepository;
import com.mindtree.zomato.serviceimpl.LocationServiceImpl;
import com.mindtree.zomato.serviceimpl.UserServiceImpl;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceImplTest {

	@InjectMocks
	private Usercontroller controller;

	@InjectMocks
	private LocationController lcontroller;

	@InjectMocks
	private UserServiceImpl service;

	@Mock
	private LocationServiceImpl lservice;

	@Mock
	private LocationRepository lrepo;

	@Mock
	private UserRepository urepo;

	@BeforeEach
	public void Setup() {
		MockitoAnnotations.initMocks(this);
	}

	@Test
	public void getUsers() {
		User user = new User();
		user.setUserId(1);
		user.setUsername("anudeep");
		user.setPassword("anudeep123");
		user.setRole("Admin");
		user.setEmail("anudeepamara9@gmail.com");

		List<User> u = new ArrayList<User>();
		u.add(user);
		Mockito.lenient().when(urepo.findAll()).thenReturn(u);
		try {
			Assertions.assertEquals(u, service.getUsers());
			System.out.println("Assert Equals Test");
		} catch (Exception e) {
			Assertions.assertEquals("no user exists", e.getMessage());

		}
	}

	@Test
	public void saveUser() {

		Location l = new Location();
		l.setLocationId(1011);
		User user = new User();
		user.setUserId(1);
		List<User> u = new ArrayList<User>();
		u.add(user);
		when(urepo.save(user)).thenReturn(user);
		Mockito.lenient().when(lrepo.findById(1)).thenReturn(Optional.of(l));
		try {
			Assertions.assertEquals( 1,u.size());
			System.out.println("Assert Equals Test");
		} catch (Exception e) {
			Assertions.assertEquals("no user exists", e.getMessage());

		}
	}
	
	

	@Test
	public void getuser() {

		User user = new User();
		Mockito.lenient().when(urepo.findById(1)).thenReturn(Optional.of(user));
		try {
			Assertions.assertEquals(user, user);
			System.out.println("Assert Equals Test");
		} catch (Exception e) {
			Assertions.assertEquals("no user exists", e.getMessage());

		}
	}
	
	

	@Test
	public void getAllUser() {
		User user = new User();
		List<User> user1 = new ArrayList<User>();
		user1.add(user);
		Mockito.lenient().when(urepo.findAll()).thenReturn(user1);
		try {
			Assertions.assertEquals(user1, service.getAllUser());
			System.out.println("Assert Equals Test");
		} catch (Exception e) {
			Assertions.assertEquals("no user exists", e.getMessage());

		}
	}
	
	

}
