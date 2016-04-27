package com.product.tour.back.line.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.product.common.po.PageParam;
import com.product.tour.back.line.po.TourLinePO;
import com.product.tour.back.line.service.ITourLineService;
import com.product.tour.back.tourtype.external.ITourTypeExternalService;

@Controller
@RequestMapping( value = "/back/line")
public class LineController {

	private static final String ROOT_PATH = "/back/line/";
	
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
	public Object getTourLine(@RequestBody PageParam pageParam){
		pageParam = tourLineServiceImpl.getPageInfo(pageParam);
		return pageParam;
	}
	
	/**
	 * 
	 * @param page
	 * @return
	 * 获取单条旅游路线信息
	 */
	@RequestMapping("/getTourLineInfo")
	@ResponseBody
	public Object getTourLineInfo(@RequestBody Integer tourlineid){
		return tourLineServiceImpl.getPOByPrimaryKey(tourlineid);
	}
	
	@RequestMapping("/delTourLine")
	@ResponseBody
	public Object delTourLine(@RequestBody List<String> idList){
		return tourLineServiceImpl.delByPrimaryKeyList_tx(idList);
	}
	
	@RequestMapping("/updateTourLine")
	@ResponseBody
	public Object updateTourLine(@RequestBody TourLinePO tourLinePO){
		return tourLineServiceImpl.update_tx(tourLinePO);
	}
	
	@RequestMapping("/addTourLine")
	@ResponseBody
	public Object addTourLine(@RequestBody TourLinePO tourLinePO){
		return tourLineServiceImpl.add_tx(tourLinePO);
		
	}
	
	@RequestMapping("/getTourTypeList")
	@ResponseBody
	public Object getTourTypeList(){
		return tourTypeExternalServiceImpl.getTourTypeList();
		
	}
}
