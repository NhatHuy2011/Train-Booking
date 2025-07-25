package com.trainbooking.service;

import java.util.List;

import com.trainbooking.dto.response.StationResponse;

public interface IStationService {
	/**
	 * Lấy thông tin ga theo từ khoá (Auto Suggest)
	 *
	 * @param keyword Kí tự người dùng nhập
	 * @return Danh sách các ga có chứa kí tự đó                            
	 */
	List<StationResponse> findByStationNameContainingIgnoreCase(String keyword);
}
