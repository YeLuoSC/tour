package com.product.tour.back.line.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.product.common.po.PageParam;
import com.product.common.po.SearchParam;
import com.product.tour.back.line.dao.TourLineMapper;
import com.product.tour.back.line.po.TourLinePO;
import com.product.tour.back.line.service.ITourLineService;

@Service
public class TourLineServiceImpl implements ITourLineService{

	@Resource
	private TourLineMapper tourLineMapper;
	
	@Override
	public PageParam getPageInfo(PageParam pageParam) {
		PageHelper.startPage(pageParam.getPageNum(),pageParam.getPageSize());
		List<TourLinePO> list = null;
		List<SearchParam> searchList = pageParam.getSearchParams();
		if(searchList != null && searchList.size() > 0){
			String tourTypeId = null;
			String tourLineName = null;
			for(SearchParam param : searchList){
				if(param.getValue() != null){
					if(param.getKey().equalsIgnoreCase("tourTypeId")){
						tourTypeId = param.getValue().toString();
					}else if(param.getKey().equalsIgnoreCase("tourLineName")){
						tourLineName = "%"+param.getValue().toString()+"%";
					}
				}
			}
			list = tourLineMapper.getTourLine(tourLineName,tourTypeId);
		}else{
			list = tourLineMapper.getTourLine(null,null);
		}
		
		PageParam result = new PageParam(list);
		return result;
	}

	@Override
	public TourLinePO add_tx(TourLinePO tourLinePO) {
		tourLineMapper.insert(tourLinePO);
		return tourLinePO;
	}

	@Override
	public TourLinePO update_tx(TourLinePO tourLinePO) {
		tourLineMapper.updateByPrimaryKey(tourLinePO);
		return tourLinePO;
	}

	@Override
	public Object del_tx(TourLinePO t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TourLinePO getPOByPrimaryKey(Integer id) {
		return tourLineMapper.getTourLineByTourLineId(id);
	}

	@Override
	public Object delByPrimaryKeyList_tx(List<String> idList) {
		if(idList != null && idList.size() > 0){
			tourLineMapper.deleteTourLine(idList);
		}
		Map<String,String> map = new HashMap<String,String>();
		map.put("success", idList.size()+"");
		return map;
	}
}
