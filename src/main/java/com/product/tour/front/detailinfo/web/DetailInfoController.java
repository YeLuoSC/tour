package com.product.tour.front.detailinfo.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.product.tour.back.attraction.external.IAttractionExternalService;
import com.product.tour.back.attraction.po.AttractionPO;
import com.product.tour.back.book.external.IBookExternalService;
import com.product.tour.back.book.po.BookInfoPO;
import com.product.tour.back.line.external.ILineExternalService;
import com.product.tour.back.line.po.TourLinePO;
import com.product.tour.back.tourtype.external.ITourTypeExternalService;

@Controller
@RequestMapping( value = "/front/detailInfo")
public class DetailInfoController {

	private static final String ROOT_PATH = "/front/";
	
	@Resource
	private ILineExternalService lineExternalServiceImpl;
	@Resource
	private ITourTypeExternalService tourTypeExternalServiceImpl;
	@Resource
	private IBookExternalService bookExternalServiceImpl;
	@Resource
	private IAttractionExternalService attractionExternalServiceImpl;
	
	@RequestMapping("/getAttractionDetailInfo")
	public ModelAndView getAttractionDetailInfo(Integer attractionId){
		ModelAndView mav = new ModelAndView(ROOT_PATH + "attractionDetail");
		AttractionPO attractionPO = attractionExternalServiceImpl.getAttractionByAttractionId(attractionId);
		mav.addObject("attractionPO", attractionPO);
		List<AttractionPO> otherList = attractionExternalServiceImpl.getAttractionList();
		//只截取前5个
		if(otherList.size() > 4){
			otherList = otherList.subList(0, 4);
		}
		mav.addObject("otherAttractionList",otherList);
		List<BookInfoPO> bookList = bookExternalServiceImpl.getBookInfoByTypeAndRelationId("0", attractionId);
		mav.addObject("comments", bookList);
		return mav;
	}
	
	@RequestMapping("/getTourLineDetailInfo")
	public ModelAndView getTourLineDetailInfo(Integer tourLineId){
		ModelAndView mav = new ModelAndView(ROOT_PATH + "tourLineDetail");
		TourLinePO tourLinePO = lineExternalServiceImpl.getTourLineByTourLineId(tourLineId);
		mav.addObject("tourLinePO", tourLinePO);
		mav.addObject("tourTypeList",tourTypeExternalServiceImpl.getTourTypeList());
		List<TourLinePO> otherList = lineExternalServiceImpl.getTourLineByTourTypeId(tourLinePO.getTourTypeId());
		//只截取前5个
		if(otherList.size() > 4){
			otherList = otherList.subList(0, 4);
		}
		mav.addObject("otherTourLineList",otherList);
		List<BookInfoPO> bookList = bookExternalServiceImpl.getBookInfoByTypeAndRelationId("1", tourLineId);
		mav.addObject("comments", bookList);
		return mav;
	}
	
	@RequestMapping("/saveComment")
	@ResponseBody
	public Object saveComment(@RequestBody BookInfoPO bookInfoPO){
		bookExternalServiceImpl.saveComment(bookInfoPO);
		Map result = new HashMap<String,String>();
		result.put("success", "1");
		return result;
	}
}
