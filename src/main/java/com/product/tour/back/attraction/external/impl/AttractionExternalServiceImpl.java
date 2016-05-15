package com.product.tour.back.attraction.external.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.product.tour.back.attraction.dao.AttractionMapper;
import com.product.tour.back.attraction.external.IAttractionExternalService;
import com.product.tour.back.attraction.po.AttractionPO;
@Service
public class AttractionExternalServiceImpl implements IAttractionExternalService{

	@Resource
	private AttractionMapper attractionMapper;
	
	@Override
	public List<AttractionPO> getAttractionList() {
		Example example = new Example(AttractionPO.class);
		example.setOrderByClause("orderid");
		example.createCriteria().andEqualTo("visiable", "1");
		
		return attractionMapper.selectByExample(example);
	}

	@Override
	public AttractionPO getAttractionByAttractionId(Integer attractionId) {
		
		return attractionMapper.getAttractionByAttractionId(attractionId);
	}

}
