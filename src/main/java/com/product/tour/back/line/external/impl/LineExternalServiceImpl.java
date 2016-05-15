package com.product.tour.back.line.external.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.product.tour.back.line.dao.TourLineMapper;
import com.product.tour.back.line.external.ILineExternalService;
import com.product.tour.back.line.po.TourLinePO;
import com.product.tour.back.tourtype.po.TourTypePO;
@Service
public class LineExternalServiceImpl implements ILineExternalService{

	@Resource
	private TourLineMapper tourLineMapper;

	@Override
	public List<TourLinePO> getTourLine() {
		return tourLineMapper.selectAll();
	}

	@Override
	public List<TourLinePO> getTourLineByTourTypeId(Integer tourTypeId) {
		Example example = new Example(TourLinePO.class);
		example.setOrderByClause("orderid");
		example.createCriteria().andEqualTo("tourTypeId", tourTypeId).andEqualTo("visiable","1");
		return tourLineMapper.selectByExample(example);
	}

	@Override
	public TourLinePO getTourLineByTourLineId(Integer tourLineId) {
		
		return tourLineMapper.getTourLineByTourLineId(tourLineId);
	}
	
	
}
