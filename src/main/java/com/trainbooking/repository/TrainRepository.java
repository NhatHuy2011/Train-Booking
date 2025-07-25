package com.trainbooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.trainbooking.entity.Train;

@Repository
public interface TrainRepository extends JpaRepository<Train, Integer>{
}
