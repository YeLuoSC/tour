package com.product.tour.back.attraction.external;

import java.util.List;

import com.product.tour.back.attraction.po.AttractionPO;

public interface IAttractionExternalService {

	public List<AttractionPO> getAttractionList();
	
	public AttractionPO getAttractionByAttractionId(Integer attractionId);
	
}
