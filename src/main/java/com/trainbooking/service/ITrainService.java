package com.trainbooking.service;

import java.util.List;

import com.trainbooking.dto.response.TrainResponse;

public interface ITrainService {
	/**
	 * Lấy danh sách tàu theo mã tàu
	 * @param trainIds
	 * @return Danh sách tàu theo mã tàu
	 */
	List<TrainResponse> findAllById(List<Integer> trainIds);
}
