package com.trainbooking.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
  
import com.trainbooking.entity.Schedule;
  
@Repository 
public interface ScheduleRepository extends JpaRepository<Schedule, Integer>{
	/**
	 * Lấy thông tin lịch trình tàu theo ngày
	 *
	 * @param departureStation Ga khởi hành
	 * @param arrivalStation Ga đến 
	 * @param date Ngày đi
	 * @return Danh sách lịch trình tàu chạy trong ngày đó                              
	 */
	@Query("Select s From Schedule s Where s.departureStation.stationId = :departureStationId"
			+ " and s.arrivalStation.stationId = :arrivalStationId"
			+ " and Date(s.departureTime) = :date")
	List<Schedule> findAllByDepartureStationAndArrivalStationAndDepartureTime(
		    @Param(value = "departureStationId") Integer departureStationId,
		    @Param(value = "arrivalStationId") Integer arrivalStationId,
		    @Param(value = "date") Date date);
}
 