package com.product.tour.back.attraction.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.product.tour.back.attraction.po.AttractionPO;
import com.product.tour.back.attraction.service.IAttractionService;
import com.product.tour.back.city.external.ICityExternalService;

@Controller
@RequestMapping("/back/attraction")
public class AttractionController {

	private static final String ROOT_PATH = "/back/attraction/";
	
	@Resource
	private IAttractionService attractionServiceImpl;
	
	@Resource
	private ICityExternalService cityExternalServiceImpl;
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "attraction";
	}
	
	@RequestMapping("/getAttraction")
	@ResponseBody
	public Object getAttraction(@RequestBody PageInfo page){
		page = attractionServiceImpl.getPageInfo(page);
		return page;
	}
	
	@RequestMapping("/getAttractionInfo")
	@ResponseBody
	public Object getAttractionInfo(@RequestBody Integer attractionId){
		return attractionServiceImpl.getPOByPrimaryKey(attractionId);
	}
	
	@RequestMapping("/delAttraction")
	@ResponseBody
	public Object delAttraction(@RequestBody List<String> idList){
		return attractionServiceImpl.delByPrimaryKeyList_tx(idList);
	}
	
	@RequestMapping("/updateAttraction")
	@ResponseBody
	public Object updateAttraction(@RequestBody AttractionPO attractionPO){
		return attractionServiceImpl.update_tx(attractionPO);
	}
	
	@RequestMapping("/addAttraction")
	@ResponseBody
	public Object addAttraction(@RequestBody AttractionPO attractionPO){
		return attractionServiceImpl.add_tx(attractionPO);
	}
	
	@RequestMapping("/getCityList")
	@ResponseBody
	public Object getCityList(){
		return cityExternalServiceImpl.getCityList();
		
	}
}
