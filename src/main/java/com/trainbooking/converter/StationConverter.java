package com.trainbooking.converter;

import org.springframework.stereotype.Component;

import com.trainbooking.dto.response.StationResponse;
import com.trainbooking.entity.Station;

@Component
public class StationConverter {
	public StationResponse toResponse(Station station) {
		StationResponse stationResponse = new StationResponse();
		stationResponse.setStationId(station.getStationId());
		stationResponse.setStationName(station.getStationName());
		stationResponse.setStationLocation(station.getStationLocation());
		return stationResponse;
	}
}
