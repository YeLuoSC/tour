package com.product.tour.back.tourtype.service;

import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.product.tour.back.tourtype.po.TourTypePO;

public interface ITourTypeService {

	public PageInfo getTourType(PageInfo page);
	
	public Map<String,String> delTourType_tx(List<String> idList);

	public TourTypePO updateTourType_tx(TourTypePO tourTypePO);

	public TourTypePO addTourType_tx(TourTypePO tourTypePO);
}
