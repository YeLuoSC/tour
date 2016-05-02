package com.product.tour.back.book.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.product.common.po.PageParam;
import com.product.tour.back.book.po.BookInfoPO;
import com.product.tour.back.book.service.IBookInfoService;

@Controller
@RequestMapping( value = "/back/bookInfo")
public class BookInfoController {

	private static final String ROOT_PATH = "/back/book/";
	
	@Resource
	private IBookInfoService bookInfoServiceImpl;
	
	@RequestMapping("")
	public String page(){
		return ROOT_PATH + "bookInfo";
	}
	
	@RequestMapping("/getBookInfo")
	@ResponseBody
	public Object getBookInfo(@RequestBody PageParam pageParam){
		return bookInfoServiceImpl.getPageInfo(pageParam);
	}
	
	@RequestMapping("/delBookInfo")
	@ResponseBody
	public Object delBookInfo(@RequestBody List<String> idList){
		return bookInfoServiceImpl.delByPrimaryKeyList_tx(idList);
	}
	
	@RequestMapping("/updateBookInfo")
	@ResponseBody
	public Object updateBookInfo(@RequestBody BookInfoPO bookInfoPO){
		return bookInfoServiceImpl.update_tx(bookInfoPO);
	}
	
	@RequestMapping("/addBookInfo")
	@ResponseBody
	public Object addBookInfo(@RequestBody BookInfoPO bookInfoPO){
		return bookInfoServiceImpl.add_tx(bookInfoPO);
		
	}
	
	@RequestMapping("/getBookInfoByBookInfoId")
	@ResponseBody
	public Object getBookInfoByBookInfoId(@RequestBody Integer bookInfoId){
		return bookInfoServiceImpl.getBookInfoByBookInfoId(bookInfoId);
		
	}
	
}
