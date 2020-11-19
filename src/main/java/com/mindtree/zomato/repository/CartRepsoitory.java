package com.mindtree.zomato.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.zomato.entity.Cart;

@Repository
public interface CartRepsoitory  extends JpaRepository<Cart, Integer>{

}
