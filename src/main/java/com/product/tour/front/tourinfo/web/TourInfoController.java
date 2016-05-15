package com.product.tour.front.tourinfo.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.product.tour.back.book.external.IBookExternalService;
import com.product.tour.back.book.po.BookInfoPO;
import com.product.tour.back.line.external.ILineExternalService;
import com.product.tour.back.tourtype.external.ITourTypeExternalService;
import com.product.tour.back.tourtype.po.TourTypePO;

@Controller
@RequestMapping( value = "/front/tourinfo")
public class TourInfoController {

	private static final String ROOT_PATH = "/front/";
	
	@Resource
	private ITourTypeExternalService tourTypeExternalServiceImpl;
	
	@Resource
	private ILineExternalService lineExternalServiceImpl;
	
	@Resource
	private IBookExternalService bookExternalServiceImpl;
	
	@RequestMapping("")
	public ModelAndView page(){
		ModelAndView mav = new ModelAndView(ROOT_PATH+"tourInfo");
		List<TourTypePO> list = tourTypeExternalServiceImpl.getTourTypeList();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("/getTourLineByTourTypeId")
	@ResponseBody
	public Object getTourLineByTourTypeId(@RequestBody Integer tourTypeId){
		return lineExternalServiceImpl.getTourLineByTourTypeId(tourTypeId);
	}
	
	
}
