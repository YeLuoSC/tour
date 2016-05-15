package com.product.tour.back.book.external;

import java.util.List;

import com.product.tour.back.book.po.BookInfoPO;

public interface IBookExternalService {

	public void saveComment(BookInfoPO bookInfoPO);
	
	/**
	 * 获取景点、旅游路线关联的预订信息
	 * @param bookType
	 * @param relationId
	 * @return
	 */
	public List<BookInfoPO> getBookInfoByTypeAndRelationId(String bookType,Integer relationId);
}
