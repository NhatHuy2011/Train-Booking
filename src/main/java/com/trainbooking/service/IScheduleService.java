package com.trainbooking.service;

import java.sql.Date;
import java.util.List;

import com.trainbooking.dto.response.ScheduleResponse;

public interface IScheduleService {
	/**
	 * Lấy thông tin lịch trình tàu theo ngày
	 *
	 * @param departureStation Ga khởi hành
	 * @param arrivalStation Ga đến 
	 * @param date Ngày đi
	 * @return Danh sách lịch trình tàu chạy trong ngày đó                              
	 */
	List<ScheduleResponse> findByDepartureStationAndArrivalStationAndDepartureTime(
			Integer departureStationId,
			Integer arrivalStationId,
			Date date);
}
