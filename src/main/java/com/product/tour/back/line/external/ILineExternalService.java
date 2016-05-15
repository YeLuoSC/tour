package com.product.tour.back.line.external;

import java.util.List;

import com.product.tour.back.line.po.TourLinePO;

public interface ILineExternalService {
	
	List<TourLinePO> getTourLine();
	
	List<TourLinePO> getTourLineByTourTypeId(Integer tourTypeId);
	
	TourLinePO getTourLineByTourLineId(Integer tourLineId);
}
