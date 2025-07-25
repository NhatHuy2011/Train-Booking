package com.trainbooking.dto.response;

import com.trainbooking.enums.TrainLevel;

public class TrainResponse {
	private Integer trainId;
	private String trainName;
	private Integer trainCapacityInteger;
//	private TrainLevel trainPriorityLevel;
	
	public TrainResponse() {
		super();
	}
	public Integer getTrainId() {
		return trainId;
	}
	public void setTrainId(Integer trainId) {
		this.trainId = trainId;
	}
	public String getTrainName() {
		return trainName;
	}
	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}
	public Integer getTrainCapacityInteger() {
		return trainCapacityInteger;
	}
	public void setTrainCapacityInteger(Integer trainCapacityInteger) {
		this.trainCapacityInteger = trainCapacityInteger;
	}
//	public TrainLevel getTrainPriorityLevel() {
//		return trainPriorityLevel;
//	}
//	public void setTrainPriorityLevel(TrainLevel trainPriorityLevel) {
//		this.trainPriorityLevel = trainPriorityLevel;
//	}
}
