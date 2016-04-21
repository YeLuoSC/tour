package com.product.tour.back.tourtype.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.product.common.dao.SuperMapper;
import com.product.tour.back.tourtype.po.TourTypePO;

public interface TourTypeMapper extends SuperMapper<TourTypePO>{

	public void deleteTourType(@Param("idList")List<String> idList);
}
