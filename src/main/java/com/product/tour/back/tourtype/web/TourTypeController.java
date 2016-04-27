package com.product.tour.back.tourtype.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.product.common.po.PageParam;
import com.product.tour.back.tourtype.po.TourTypePO;
import com.product.tour.back.tourtype.service.ITourTypeService;

@Controller
@RequestMapping( value = "/back/tourType")
public class TourTypeController {

	private static final String ROOT_PATH = "/back/tourtype/";
	
	@Resource
	private ITourTypeService tourTypeServiceImpl;
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "tourType";
	}
	
	@RequestMapping("/getTourType")
	@ResponseBody
	public Object getTourType(@RequestBody PageParam pageParam){
		return tourTypeServiceImpl.getPageInfo(pageParam);
	}
	
	@RequestMapping("/delTourType")
	@ResponseBody
	public Object delTourType(@RequestBody List<String> idList){
		return tourTypeServiceImpl.delByPrimaryKeyList_tx(idList);
	}
	
	@RequestMapping("/updateTourType")
	@ResponseBody
	public Object updateTourType(@RequestBody TourTypePO tourTypePO){
		return tourTypeServiceImpl.update_tx(tourTypePO);
	}
	
	@RequestMapping("/addTourType")
	@ResponseBody
	public Object addTourType(@RequestBody TourTypePO tourTypePO){
		return tourTypeServiceImpl.add_tx(tourTypePO);
		
	}
}
