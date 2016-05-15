package com.product.tour.back.book.external;

import java.util.List;

import com.product.tour.back.book.po.BookInfoPO;

public interface IBookExternalService {

	public void saveComment(BookInfoPO bookInfoPO);
	
	/**
	 * ��ȡ���㡢����·�߹�����Ԥ����Ϣ
	 * @param bookType
	 * @param relationId
	 * @return
	 */
	public List<BookInfoPO> getBookInfoByTypeAndRelationId(String bookType,Integer relationId);
}
