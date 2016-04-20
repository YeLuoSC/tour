package com.product.tour.back.line.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( value = "/back/line")
public class LineController {

	private static final String ROOT_PATH = "/back/";
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "line";
	}
}
