package com.product.tour.back.book.external.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.product.tour.back.book.dao.BookInfoMapper;
import com.product.tour.back.book.external.IBookExternalService;
import com.product.tour.back.book.po.BookInfoPO;
import com.product.tour.back.book.service.IBookInfoService;

@Service
public class BookExternalServiceImpl implements IBookExternalService{

	@Resource
	private IBookInfoService bookInfoServiceImpl;
	
	@Resource
	private BookInfoMapper bookInfoMapper;
	
	@Override
	public void saveComment(BookInfoPO bookInfoPO) {
		bookInfoServiceImpl.add_tx(bookInfoPO);
	}

	@Override
	public List<BookInfoPO> getBookInfoByTypeAndRelationId(String bookType,
			Integer relationId) {
		Example example = new Example(BookInfoPO.class);
		example.createCriteria().andEqualTo("bookType", bookType).andEqualTo("relationId", relationId);
		return bookInfoMapper.selectByExample(example);
	}

}
