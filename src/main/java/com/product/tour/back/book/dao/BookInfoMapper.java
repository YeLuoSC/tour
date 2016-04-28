package com.product.tour.back.book.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.product.common.dao.SuperMapper;
import com.product.tour.back.book.po.BookInfoPO;

public interface BookInfoMapper extends SuperMapper<BookInfoPO>{

	public BookInfoPO getBookInfoByBookInfoId(@Param("bookInfoId")Integer bookInfoId);

	public void deleteBookInfo(@Param("idList")List<String> idList);

}
