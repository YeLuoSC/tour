package com.product.tour.front.car.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( value = "/front/carRental")
public class CarRentalController {

	private static final String ROOT_PATH = "/front/";
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "carRental";
	}
}
