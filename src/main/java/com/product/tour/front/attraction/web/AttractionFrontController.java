package com.product.tour.front.attraction.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.product.tour.back.attraction.external.IAttractionExternalService;
import com.product.tour.back.attraction.po.AttractionPO;

@Controller
@RequestMapping( value = "/front/attraction")
public class AttractionFrontController {

	private static final String ROOT_PATH = "/front/";
	
	@Resource
	private IAttractionExternalService attractionExternalServiceImpl;
	
	@RequestMapping("")
	public ModelAndView page(){
		ModelAndView mav = new ModelAndView(ROOT_PATH+"attraction");
		List<AttractionPO> list = attractionExternalServiceImpl.getAttractionList();
		mav.addObject("list", list);
		return mav;
	}
}
