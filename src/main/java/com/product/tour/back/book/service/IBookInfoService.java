package com.product.tour.back.book.service;

import com.product.common.service.IBaseService;
import com.product.tour.back.book.po.BookInfoPO;

public interface IBookInfoService extends IBaseService<BookInfoPO>{
	
	public BookInfoPO getBookInfoByBookInfoId(Integer bookInfoId);

}
