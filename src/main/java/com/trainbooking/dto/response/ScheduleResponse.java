package com.trainbooking.dto.response;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class ScheduleResponse {
	private Integer scheduleId;
	private TrainResponse trainResponse;
	private StationResponse departureStationResponse;
	private StationResponse arrivalStationResponse;
	private Timestamp departureTime;
	private Timestamp arrivalTime;
	private Integer basePrice;
	
	public ScheduleResponse() {
		super();
	}
	
	@Override
	public String toString() {
		return "ScheduleResponse [scheduleId=" + scheduleId + ", trainResponse=" + trainResponse
				+ ", departureStationResponse=" + departureStationResponse + ", arrivalStationResponse="
				+ arrivalStationResponse + ", departureTime=" + departureTime + ", arrivalTime=" + arrivalTime
				+ ", basePrice=" + basePrice + "]";
	}

	public Integer getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(Integer scheduleId) {
		this.scheduleId = scheduleId;
	}
	public TrainResponse getTrainResponse() {
		return trainResponse;
	}
	public void setTrainResponse(TrainResponse trainResponse) {
		this.trainResponse = trainResponse;
	}
	public StationResponse getDepartureStationResponse() {
		return departureStationResponse;
	}
	public void setDepartureStationResponse(StationResponse departureStationResponse) {
		this.departureStationResponse = departureStationResponse;
	}
	public StationResponse getArrivalStationResponse() {
		return arrivalStationResponse;
	}
	public void setArrivalStationResponse(StationResponse arrivalStationResponse) {
		this.arrivalStationResponse = arrivalStationResponse;
	}
	public Timestamp getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(Timestamp departureTime) {
		this.departureTime = departureTime;
	}
	public Timestamp getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(Timestamp arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public Integer getBasePrice() {
		return basePrice;
	}
	public void setBasePrice(Integer basePrice) {
		this.basePrice = basePrice;
	}
}
