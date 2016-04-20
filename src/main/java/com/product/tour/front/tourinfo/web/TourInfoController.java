package com.product.tour.front.tourinfo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( value = "/front/tourinfo")
public class TourInfoController {

	private static final String ROOT_PATH = "/front/";
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "tourInfo";
	}
}
