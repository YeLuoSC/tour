package com.product.tour.back.attraction.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.product.common.dao.SuperMapper;
import com.product.tour.back.attraction.po.AttractionPO;

public interface AttractionMapper extends SuperMapper<AttractionPO>{
	
	public void deleteAttraction(@Param("idList")List<String> idList);
	
	public List<AttractionPO> getAttraction(@Param("attractionName")String attractionName);
	
	public AttractionPO getAttractionByAttractionId(@Param("attractionId")Integer attractionId);
}
