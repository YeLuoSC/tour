package com.product.tour.back.book.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

import com.github.pagehelper.PageHelper;
import com.product.common.po.PageParam;
import com.product.common.po.SearchParam;
import com.product.tour.back.book.dao.BookInfoMapper;
import com.product.tour.back.book.po.BookInfoPO;
import com.product.tour.back.book.service.IBookInfoService;
import com.product.tour.back.tourtype.po.TourTypePO;
@Service
public class BookInfoServiceImpl implements IBookInfoService{

	@Resource
	private BookInfoMapper bookInfoMapper;
	
	@Override
	public PageParam getPageInfo(PageParam pageParam) {
		PageParam result = null;
		PageHelper.startPage(pageParam.getPageNum(),pageParam.getPageSize());
		if(pageParam.getSearchParams() != null && pageParam.getSearchParams().size() > 0){
			List<SearchParam> sps = pageParam.getSearchParams();
			Example example = new Example(TourTypePO.class);
			Criteria c = example.createCriteria();
			for(SearchParam sp : sps){
				c.andLike(sp.getKey(), "%"+sp.getValue().toString()+"%");
			}
			List<BookInfoPO> list = bookInfoMapper.selectByExample(example);
			result = new PageParam(list,pageParam);
			
		}else{
			List<BookInfoPO> list = bookInfoMapper.getBookInfo();
			result = new PageParam(list);
		}
		return result;
	}

	@Override
	public BookInfoPO add_tx(BookInfoPO bookInfoPO) {
		bookInfoPO.setCreateDate(new Date());
		bookInfoMapper.insert(bookInfoPO);
		return bookInfoPO;
	}

	@Override
	public BookInfoPO update_tx(BookInfoPO bookInfoPO) {
		bookInfoMapper.updateByPrimaryKey(bookInfoPO);
		return bookInfoPO;
	}

	@Override
	public Object del_tx(BookInfoPO bookInfoPO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BookInfoPO getPOByPrimaryKey(Integer id) {
		return bookInfoMapper.getBookInfoByBookInfoId(id);
	}

	@Override
	public Object delByPrimaryKeyList_tx(List<String> idList) {
		if(idList != null && idList.size() > 0){
			bookInfoMapper.deleteBookInfo(idList);
		}
		Map<String,String> map = new HashMap<String,String>();
		map.put("success", idList.size()+"");
		return map;
	}

	@Override
	public BookInfoPO getBookInfoByBookInfoId(Integer bookInfoId) {
		return bookInfoMapper.getBookInfoByBookInfoId(bookInfoId);
	}

}
