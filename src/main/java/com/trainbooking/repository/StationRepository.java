package com.trainbooking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.trainbooking.entity.Station;

@Repository
public interface StationRepository extends JpaRepository<Station, Integer>{
	List<Station> findByStationNameContainingIgnoreCase(String keyword);
}	
