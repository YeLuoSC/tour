package com.product.tour.back.tourtype.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( value = "/back/tourType")
public class TourTypeController {

	private static final String ROOT_PATH = "/back/";
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "tourType";
	}
}
