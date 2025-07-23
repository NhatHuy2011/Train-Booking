package com.trainbooking.service;

import java.util.List;

import com.trainbooking.dto.response.StationResponse;

public interface IStationService {
	List<StationResponse> findByStationNameContainingIgnoreCase(String keyword);
}
