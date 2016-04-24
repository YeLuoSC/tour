package com.product.tour.back.attraction.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/back/attraction")
public class AttractionController {

	private static final String ROOT_PATH = "/back/attraction/";
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "attraction";
	}
}
