package com.trainbooking.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.trainbooking.enums.TrainLevel;

@Entity
@Table(name = "trains")
public class Train {
	@Id
	@Column(name = "train_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer trainId;
	
	@Column(name = "train_name")
	private String trainName;
	
	@Column(name = "train_capacity")
	private Integer trainCapacity;
	
//	@Column(name = "train_priority_level")
//	private TrainLevel trainPriorityLevel;
	
	public Train() {
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

	public Integer getTrainCapacity() {
		return trainCapacity;
	}

	public void setTrainCapacity(Integer trainCapacity) {
		this.trainCapacity = trainCapacity;
	}

//	public TrainLevel getTrainPriorityLevel() {
//		return trainPriorityLevel;
//	}
//
//	public void setTrainPriorityLevel(TrainLevel trainPriorityLevel) {
//		this.trainPriorityLevel = trainPriorityLevel;
//	}
}
