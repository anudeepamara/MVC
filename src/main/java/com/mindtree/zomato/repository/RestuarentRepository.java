package com.mindtree.zomato.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.zomato.entity.Restuarent;

@Repository
public interface RestuarentRepository extends JpaRepository<Restuarent, Integer> {

}
