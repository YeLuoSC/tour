package com.product.tour.front.kungfu.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( value = "/front/kungfu")
public class KungfuShowController {

	private static final String ROOT_PATH = "/front/";
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "kungfuShow";
	}
}
