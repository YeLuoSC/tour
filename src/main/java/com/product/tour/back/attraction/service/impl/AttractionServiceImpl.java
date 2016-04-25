package com.product.tour.back.attraction.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.product.tour.back.attraction.dao.AttractionMapper;
import com.product.tour.back.attraction.po.AttractionPO;
import com.product.tour.back.attraction.service.IAttractionService;
@Service
public class AttractionServiceImpl implements IAttractionService{

	@Resource
	private AttractionMapper attractionMapper;

	@Override
	public PageInfo getPageInfo(PageInfo pageInfo) {
		PageHelper.startPage(pageInfo.getPageNum(),pageInfo.getPageSize());
		List<AttractionPO> list = attractionMapper.getAttraction();
		PageInfo result = new PageInfo(list);
		return result;
	}

	@Override
	public AttractionPO add_tx(AttractionPO attractionPO) {
		attractionMapper.insert(attractionPO);
		return attractionPO;
	}

	@Override
	public AttractionPO update_tx(AttractionPO attractionPO) {
		attractionMapper.updateByPrimaryKey(attractionPO);
		return attractionPO;
	}

	@Override
	public Object del_tx(AttractionPO t) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public AttractionPO getPOByPrimaryKey(Integer id) {
		return attractionMapper.getAttractionByAttractionId(id);
	}

	@Override
	public Object delByPrimaryKeyList_tx(List<String> idList) {
		if(idList != null && idList.size() > 0){
			attractionMapper.deleteAttraction(idList);
		}
		Map<String,String> map = new HashMap<String,String>();
		map.put("success", idList.size()+"");
		return map;
	}

}
