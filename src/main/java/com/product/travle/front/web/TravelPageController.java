package com.product.travle.front.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( value = "/front")
public class TravelPageController {

	private static final String ROOT_PATH = "/front/";
	
	@RequestMapping("/index")
	public String index(){
		return ROOT_PATH + "index";
	}
}
