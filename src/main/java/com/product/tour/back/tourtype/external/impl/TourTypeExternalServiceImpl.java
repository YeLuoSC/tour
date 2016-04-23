package com.product.tour.back.tourtype.external.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.product.tour.back.tourtype.dao.TourTypeMapper;
import com.product.tour.back.tourtype.external.ITourTypeExternalService;
import com.product.tour.back.tourtype.po.TourTypePO;

@Service
@Transactional(readOnly=true)
public class TourTypeExternalServiceImpl implements ITourTypeExternalService{

	@Resource
	private TourTypeMapper tourTypeMapper;
	
	@Override
	public List<TourTypePO> getTourTypeList() {
		
		return tourTypeMapper.selectAll();
	}

}
