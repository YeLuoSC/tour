package com.product.tour.back.city.external.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.product.tour.back.city.dao.CityMapper;
import com.product.tour.back.city.external.ICityExternalService;
import com.product.tour.back.city.po.CityPO;

@Service
public class CityExternalServiceImpl implements ICityExternalService{

	@Resource
	private CityMapper cityMapper;
	
	@Override
	public List<CityPO> getCityList() {
		return cityMapper.selectAll();
	}

}
