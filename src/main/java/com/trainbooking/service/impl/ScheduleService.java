package com.trainbooking.service.impl;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trainbooking.converter.ScheduleConverter;
import com.trainbooking.dto.response.ScheduleResponse;
import com.trainbooking.entity.Schedule;
import com.trainbooking.repository.ScheduleRepository;
import com.trainbooking.service.IScheduleService;

@Service
public class ScheduleService implements IScheduleService{
	@Autowired
	private ScheduleRepository scheduleRepository;
	
	@Autowired
	private ScheduleConverter scheduleConverter;
	
	/**
	 * Lấy thông tin lịch trình tàu theo ngày
	 *
	 * @param departureStation Ga khởi hành
	 * @param arrivalStation Ga đến 
	 * @param date Ngày đi
	 * @return Danh sách lịch trình tàu chạy trong ngày đó                              
	 */
	@Override
	public List<ScheduleResponse> findByDepartureStationAndArrivalStationAndDepartureTime(
			Integer departureStationId,
			Integer arrivalStationId,
			Date date) {		
		List<Schedule> schedules = scheduleRepository.findAllByDepartureStationAndArrivalStationAndDepartureTime(
				departureStationId,
				arrivalStationId,
				date
				);
		
		List<ScheduleResponse> scheduleResponses = new ArrayList<>();
		for(Schedule schedule:schedules) {
			ScheduleResponse scheduleResponse = scheduleConverter.toScheduleResponse(schedule);
			scheduleResponses.add(scheduleResponse);
		}
		
		return scheduleResponses;
	}

}
