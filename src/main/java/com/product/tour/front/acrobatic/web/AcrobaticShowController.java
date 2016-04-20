package com.product.tour.front.acrobatic.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( value = "/front/acrobatic")
public class AcrobaticShowController {
	
	private static final String ROOT_PATH = "/front/";
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "acrobaticShow";
	}
}
