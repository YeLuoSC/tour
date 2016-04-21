package com.product.tour.back.tourtype.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.product.tour.back.tourtype.dao.TourTypeMapper;
import com.product.tour.back.tourtype.po.TourTypePO;
import com.product.tour.back.tourtype.service.ITourTypeService;

@Service
public class TourTypeServiceImpl implements ITourTypeService{

	@Resource
	private TourTypeMapper tourTypeMapper;
	
	@Override
	public PageInfo getTourType(PageInfo page) {
		PageHelper.startPage(page.getPageNum(),page.getPageSize());
		//List<Map<String, Object>> dataList = synch4jMapper.getSynchSettingList(physDBName, tableName);
		List<TourTypePO> list = tourTypeMapper.selectAll();
		PageInfo result = new PageInfo(list);
		return result;
	}

	@Override
	public Map<String,String> delTourType_tx(List<String> idList) {
		if(idList != null && idList.size() > 0){
			tourTypeMapper.deleteTourType(idList);
		}
		Map<String,String> map = new HashMap<String,String>();
		map.put("success", idList.size()+"");
		return map;
	}

	@Override
	public TourTypePO updateTourType_tx(TourTypePO tourTypePO) {
		tourTypeMapper.updateByPrimaryKey(tourTypePO);
		return tourTypePO;
	}

	@Override
	public TourTypePO addTourType_tx(TourTypePO tourTypePO) {
		tourTypeMapper.insert(tourTypePO);
		return tourTypePO;
	}

}
