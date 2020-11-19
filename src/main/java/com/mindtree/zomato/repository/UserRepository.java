package com.mindtree.zomato.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.zomato.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

}
