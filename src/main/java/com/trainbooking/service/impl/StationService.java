package com.trainbooking.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trainbooking.converter.StationConverter;
import com.trainbooking.dto.response.StationResponse;
import com.trainbooking.entity.Station;
import com.trainbooking.repository.StationRepository;
import com.trainbooking.service.IStationService;

@Service
public class StationService implements IStationService{
	@Autowired
	private StationRepository stationRepository;
	
	@Autowired
	private StationConverter stationConverter;
	
	@Override
	public List<StationResponse> findByStationNameContainingIgnoreCase(String keyword) {
		List<Station> stations = stationRepository.findByStationNameContainingIgnoreCase(keyword);
		List<StationResponse> stationResponses = new ArrayList<>();
		for(Station station : stations) {
			StationResponse stationResponse = stationConverter.toResponse(station);
			stationResponses.add(stationResponse);
		}
		
		return stationResponses;
	}

}
