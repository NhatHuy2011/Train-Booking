package com.trainbooking.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trainbooking.converter.TrainConverter;
import com.trainbooking.dto.response.TrainResponse;
import com.trainbooking.entity.Train;
import com.trainbooking.repository.TrainRepository;
import com.trainbooking.service.ITrainService;

@Service
public class TrainService implements ITrainService{
	@Autowired
	private TrainRepository trainRepository;
	
	@Autowired
	private TrainConverter trainConverter;
	
	/**
	 * Lấy danh sách tàu theo mã tàu
	 * @param trainIds
	 * @return Danh sách tàu theo mã tàu
	 */
	@Override
	public List<TrainResponse> findAllById(List<Integer> trainIds) {
		List<Train> trains = trainRepository.findAll(trainIds);
		
		List<TrainResponse> trainResponses = new ArrayList<>();
		for(Train train:trains) {
			TrainResponse trainResponse = trainConverter.toTrainResponse(train);
			trainResponses.add(trainResponse);
		}
		return trainResponses;
	}

}
