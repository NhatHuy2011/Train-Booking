package com.trainbooking.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trainbooking.dto.response.ScheduleResponse;
import com.trainbooking.service.impl.ScheduleService;

@Controller
public class ScheduleController {
	@Autowired
	private ScheduleService scheduleService;

	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
    public String schedulePage(
            @RequestParam("departureStationId") Integer departureStationId,
            @RequestParam("arrivalStationId") Integer arrivalStationId,
            @RequestParam("date") Date date,
            @RequestParam(value = "returnDate", required = false) Date returnDate,
            Model model) {

        List<ScheduleResponse> schedules = scheduleService.findByDepartureStationAndArrivalStationAndDepartureTime(
                departureStationId, 
                arrivalStationId, 
                date);
        model.addAttribute("schedules", schedules);

        if (returnDate != null) {
            List<ScheduleResponse> returnSchedules = scheduleService.findByDepartureStationAndArrivalStationAndDepartureTime(
                    arrivalStationId, 
                    departureStationId, 
                    returnDate);
            model.addAttribute("returnSchedules", returnSchedules);
        }

        return "schedule";
    }
}
