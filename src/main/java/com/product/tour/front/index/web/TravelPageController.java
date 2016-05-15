package com.product.tour.front.index.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.product.tour.back.line.external.ILineExternalService;

@Controller
@RequestMapping( value = "/front/index")
public class TravelPageController {

	private static final String ROOT_PATH = "/front/";
	
	@Resource
	private ILineExternalService lineExternalServiceImpl;
	
	@RequestMapping("")
	public String index(){
		return ROOT_PATH + "index";
	}
	
	@RequestMapping("/indexInfo")
	public String indexInfo(){
		return ROOT_PATH + "indexInfo";
	}
	
	@RequestMapping("/getTourLine")
	@ResponseBody
	public Object getTourLine(){
		return lineExternalServiceImpl.getTourLine();
	}
}
