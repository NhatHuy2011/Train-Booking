package com.trainbooking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trainbooking.dto.response.StationResponse;
import com.trainbooking.service.impl.StationService;

@Controller(value = "homeController")
public class HomeController {
	@Autowired
	private StationService stationService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String homePage(@RequestParam(value = "keyword", required = false) String keyword, Model model) {
		if(keyword != null && !keyword.isEmpty()) {
			List<StationResponse> stationResponses = stationService.findByStationNameContainingIgnoreCase(keyword);
			model.addAttribute("stations", stationResponses);
		}
        return "home";
    }
}
