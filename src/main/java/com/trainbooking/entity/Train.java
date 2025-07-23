package com.trainbooking.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
	private String trainCapacity;
	
	@Column(name = "train_priority_level")
	private String trainPriorityLevel;
}
