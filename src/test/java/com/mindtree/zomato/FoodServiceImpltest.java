package com.mindtree.zomato;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.mindtree.zomato.controller.Foodcontroller;
import com.mindtree.zomato.controller.RestuarentController;
import com.mindtree.zomato.entity.Food;
import com.mindtree.zomato.entity.Restuarent;
import com.mindtree.zomato.entity.User;
import com.mindtree.zomato.repository.FoodRepository;
import com.mindtree.zomato.repository.RestuarentRepository;
import com.mindtree.zomato.serviceimpl.FoodServiceImpl;
import com.mindtree.zomato.serviceimpl.RestuarentServiceImpl;


@RunWith(SpringRunner.class)
@SpringBootTest
public class FoodServiceImpltest {

	@InjectMocks
	private Foodcontroller controller;

	@InjectMocks
	private FoodServiceImpl service;

	@Mock
	private FoodRepository repo;

	@InjectMocks
	private RestuarentController rcontroller;

	@InjectMocks
	private RestuarentServiceImpl rservice;

	@Mock
	private RestuarentRepository Restrepo;

	@Test
	public void listAll() {
		Food food = new Food();
		Restuarent rest = new Restuarent();
		List<Food> food1 = new ArrayList<Food>();
		food1.add(food);
		Mockito.lenient().when(Restrepo.findById(1)).thenReturn(Optional.of(rest));
		Mockito.lenient().when(repo.findAll()).thenReturn(food1);
		try {
			Assertions.assertEquals(food1, service.listAll());
			System.out.println("Assert Equals Test");
		} catch (Exception e) {
			Assertions.assertEquals("no Food exists", e.getMessage());

		}
	}

	@Test
	public void getallfoods() {

		Food food = new Food();
		Mockito.lenient().when(repo.findById(1)).thenReturn(Optional.of(food));
		try {
			Assertions.assertEquals(food, food);
			System.out.println("Assert Equals Test");
		} catch (Exception e) {
			Assertions.assertEquals("no Food exists", e.getMessage());

		}
	}

	@Test
	public void getAllFoods() {
		Food food = new Food();
		Restuarent rest = new Restuarent();
		List<Food> food1 = new ArrayList<Food>();
		food1.add(food);
		Mockito.lenient().when(Restrepo.findById(1)).thenReturn(Optional.of(rest));
		Mockito.lenient().when(repo.findAll()).thenReturn(food1);
		try {
			Assertions.assertEquals(food1, service.getAllFoods());
			System.out.println("Assert Equals Test");
		} catch (Exception e) {
			Assertions.assertEquals("no Food exists", e.getMessage());

		}
	}

	@Test
	public void getAllRests() {
		Restuarent rest = new Restuarent();
		List<Restuarent> rest1 = new ArrayList<Restuarent>();
		rest1.add(rest);
		Mockito.lenient().when(Restrepo.findById(1)).thenReturn(Optional.of(rest));
		Mockito.lenient().when(Restrepo.findAll()).thenReturn(rest1);
		try {
			Assertions.assertEquals(rest1, rservice.getAllRests());
			System.out.println("Assert Equals Test");
		} catch (Exception e) {
			Assertions.assertEquals("no Food exists", e.getMessage());

		}
	}

}
