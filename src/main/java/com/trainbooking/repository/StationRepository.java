package com.trainbooking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.trainbooking.entity.Station;

@Repository
public interface StationRepository extends JpaRepository<Station, Integer>{
	/**
	 * Lấy thông tin ga theo từ khoá (Auto Suggest)
	 *
	 * @param keyword Kí tự người dùng nhập
	 * @return Danh sách các ga có chứa kí tự đó                            
	 */
	List<Station> findByStationNameContainingIgnoreCase(String keyword);
}	
