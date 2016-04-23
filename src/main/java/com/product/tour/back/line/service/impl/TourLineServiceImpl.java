package com.product.tour.back.line.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.product.tour.back.line.dao.TourLineMapper;
import com.product.tour.back.line.po.TourLinePO;
import com.product.tour.back.line.service.ITourLineService;
import com.product.tour.back.tourtype.po.TourTypePO;

@Service
public class TourLineServiceImpl implements ITourLineService{

	@Resource
	private TourLineMapper tourLineMapper;
	
	@Override
	public PageInfo getTourLine(PageInfo page) {
		PageHelper.startPage(page.getPageNum(),page.getPageSize());
		//List<Map<String, Object>> dataList = synch4jMapper.getSynchSettingList(physDBName, tableName);
		List<TourLinePO> list = tourLineMapper.getTourLine();
		PageInfo result = new PageInfo(list);
		return result;
	}

	@Override
	public Map<String, String> delTourLine_tx(List<String> idList) {
		if(idList != null && idList.size() > 0){
			tourLineMapper.deleteTourLine(idList);
		}
		Map<String,String> map = new HashMap<String,String>();
		map.put("success", idList.size()+"");
		return map;
	}

	@Override
	public TourLinePO updateTourLine_tx(TourLinePO tourLinePO) {
		tourLineMapper.updateByPrimaryKey(tourLinePO);
		return tourLinePO;
	}

	@Override
	public TourLinePO addTourLine_tx(TourLinePO tourLinePO) {
		tourLineMapper.insert(tourLinePO);
		return tourLinePO;
	}

}
