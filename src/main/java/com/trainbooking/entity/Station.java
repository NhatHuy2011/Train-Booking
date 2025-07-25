package com.trainbooking.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "stations")
public class Station {
	@Id
	@Column(name = "station_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer stationId;
	
	@Column(name = "station_name")
	private String stationName;
	
	@Column(name = "station_location")
	private String stationLocation;
	
	@OneToMany(mappedBy = "departureStation")
	List<Schedule> departureSchedules;
	
	@OneToMany(mappedBy = "arrivalStation")
	List<Schedule> arrivalSchedules;
	
	public Station() {
		super();
	}

	public Integer getStationId() {
		return stationId;
	}

	public void setStationId(Integer stationId) {
		this.stationId = stationId;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public String getStationLocation() {
		return stationLocation;
	}

	public void setStationLocation(String stationLocation) {
		this.stationLocation = stationLocation;
	}
}
