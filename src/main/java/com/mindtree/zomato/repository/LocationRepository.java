package com.mindtree.zomato.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.zomato.entity.Location;

@Repository
public interface LocationRepository extends JpaRepository<Location, Integer> {

public Location findBylocationState(String locationName);

}
