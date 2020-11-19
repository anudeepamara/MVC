package com.mindtree.zomato.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.zomato.entity.Orders;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer> {

}
