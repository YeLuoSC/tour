package com.product.tour.back.line.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.product.common.dao.SuperMapper;
import com.product.tour.back.line.po.TourLinePO;

public interface TourLineMapper extends SuperMapper<TourLinePO>{

	public void deleteTourLine(@Param("idList")List<String> idList);
	
	public List<TourLinePO> getTourLine();
	
	public TourLinePO getTourLineByTourLineId(@Param("tourLineId")Integer tourLineId);
}
