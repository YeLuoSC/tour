package com.product.tour.back.line.service;

import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.product.tour.back.line.po.TourLinePO;

public interface ITourLineService {

	public PageInfo getTourLine(PageInfo page);

	public Map<String,String> delTourLine_tx(List<String> idList);

	public TourLinePO updateTourLine_tx(TourLinePO tourLinePO);

	public TourLinePO addTourLine_tx(TourLinePO tourLinePO);

}
