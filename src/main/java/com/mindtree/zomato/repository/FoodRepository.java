package com.mindtree.zomato.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.zomato.entity.Food;

@Repository
public interface FoodRepository  extends JpaRepository<Food, Integer>{

}
