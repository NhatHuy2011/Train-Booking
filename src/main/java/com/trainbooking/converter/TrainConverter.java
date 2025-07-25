package com.trainbooking.converter;

import org.springframework.stereotype.Component;

import com.trainbooking.dto.response.TrainResponse;
import com.trainbooking.entity.Train;

@Component
public class TrainConverter {
	public TrainResponse toTrainResponse(Train train) {
		TrainResponse trainResponse = new TrainResponse();
		trainResponse.setTrainId(train.getTrainId());
		trainResponse.setTrainName(train.getTrainName());
		trainResponse.setTrainCapacityInteger(train.getTrainCapacity());
//		trainResponse.setTrainPriorityLevel(train.getTrainPriorityLevel());
		
		return trainResponse;
	}
}
