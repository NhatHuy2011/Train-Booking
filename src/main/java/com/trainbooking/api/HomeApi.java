package com.trainbooking.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.trainbooking.dto.response.StationResponse;
import com.trainbooking.service.impl.StationService;

@RestController
@RequestMapping("/api/stations")
public class HomeApi {
	@Autowired
    private StationService stationService;

    @GetMapping("/search")
    public List<StationResponse> searchStations(@RequestParam("keyword") String keyword) {
        return stationService.findByStationNameContainingIgnoreCase(keyword);
    }
}
