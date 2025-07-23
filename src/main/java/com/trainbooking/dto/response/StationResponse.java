package com.trainbooking.dto.response;

public class StationResponse {
	private Integer stationId;
	private String stationName;
	private String stationLocation;
	
	public StationResponse(Integer stationId, String stationName, String stationLocation) {
		super();
		this.stationId = stationId;
		this.stationName = stationName;
		this.stationLocation = stationLocation;
	}

	public StationResponse() {
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
