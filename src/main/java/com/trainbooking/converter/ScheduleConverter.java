package com.trainbooking.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.trainbooking.dto.response.ScheduleResponse;
import com.trainbooking.entity.Schedule;

@Component
public class ScheduleConverter {
	@Autowired
	private StationConverter stationConverter;
	
	@Autowired
	private TrainConverter trainConverter;
	
	public ScheduleResponse toScheduleResponse(Schedule schedule) {
		ScheduleResponse scheduleResponse = new ScheduleResponse();
		scheduleResponse.setScheduleId(schedule.getScheduleId());
		scheduleResponse.setTrainResponse(trainConverter.toTrainResponse(schedule.getTrain()));
		scheduleResponse.setDepartureStationResponse(stationConverter.toResponse(schedule.getDepartureStation()));
		scheduleResponse.setArrivalStationResponse(stationConverter.toResponse(schedule.getArrivalStation()));
		scheduleResponse.setDepartureTime(schedule.getDepartureTime());
		scheduleResponse.setArrivalTime(schedule.getArrivalTime());
		scheduleResponse.setBasePrice(schedule.getBasePrice());
		
		return scheduleResponse;
	}
	
}
