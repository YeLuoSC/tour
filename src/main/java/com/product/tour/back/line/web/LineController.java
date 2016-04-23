package com.product.tour.back.line.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.product.tour.back.line.po.TourLinePO;
import com.product.tour.back.line.service.ITourLineService;
import com.product.tour.back.tourtype.external.ITourTypeExternalService;

@Controller
@RequestMapping( value = "/back/line")
public class LineController {

	private static final String ROOT_PATH = "/back/";
	
	@Resource
	private ITourLineService tourLineServiceImpl;
	
	@Resource
	private ITourTypeExternalService tourTypeExternalServiceImpl;
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "line";
	}
	
	@RequestMapping("/getTourLine")
	@ResponseBody
	public Object getTourLine(@RequestBody PageInfo page){
		page = tourLineServiceImpl.getTourLine(page);
		return page;
	}
	
	@RequestMapping("/delTourLine")
	@ResponseBody
	public Object delTourLine(@RequestBody List<String> idList){
		return tourLineServiceImpl.delTourLine_tx(idList);
	}
	
	@RequestMapping("/updateTourLine")
	@ResponseBody
	public Object updateTourLine(@RequestBody TourLinePO TourLinePO){
		return tourLineServiceImpl.updateTourLine_tx(TourLinePO);
	}
	
	@RequestMapping("/addTourLine")
	@ResponseBody
	public Object addTourLine(@RequestBody TourLinePO TourLinePO){
		return tourLineServiceImpl.addTourLine_tx(TourLinePO);
		
	}
	
	@RequestMapping("/getTourTypeList")
	@ResponseBody
	public Object getTourTypeList(){
		return tourTypeExternalServiceImpl.getTourTypeList();
		
	}
}
