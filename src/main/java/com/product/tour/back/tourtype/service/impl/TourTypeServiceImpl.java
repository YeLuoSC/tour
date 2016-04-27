package com.product.tour.back.tourtype.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.github.pagehelper.PageHelper;
import com.product.common.po.PageParam;
import com.product.common.po.SearchParam;
import com.product.tour.back.tourtype.dao.TourTypeMapper;
import com.product.tour.back.tourtype.po.TourTypePO;
import com.product.tour.back.tourtype.service.ITourTypeService;

@Service
public class TourTypeServiceImpl implements ITourTypeService{

	@Resource
	private TourTypeMapper tourTypeMapper;

	@Override
	public PageParam getPageInfo(PageParam pageParam) {
		PageParam result = null;
		PageHelper.startPage(pageParam.getPageNum(),pageParam.getPageSize());
		if(pageParam.getSearchParams() != null && pageParam.getSearchParams().size() > 0){
			List<SearchParam> sps = pageParam.getSearchParams();
			Example example = new Example(TourTypePO.class);
			for(SearchParam sp : sps){
				example.createCriteria().andLike(sp.getKey(), "%"+sp.getValue().toString()+"%");
				
			}
			List<TourTypePO> list = tourTypeMapper.selectByExample(example);
			result = new PageParam(list,pageParam);
			
		}else{
			List<TourTypePO> list = tourTypeMapper.selectAll();
			result = new PageParam(list);
		}
		return result;
	}

	@Override
	public TourTypePO add_tx(TourTypePO tourTypePO) {
		tourTypeMapper.insert(tourTypePO);
		return tourTypePO;
	}

	@Override
	public TourTypePO update_tx(TourTypePO tourTypePO) {
		tourTypeMapper.updateByPrimaryKey(tourTypePO);
		return tourTypePO;
	}

	@Override
	public TourTypePO del_tx(TourTypePO tourTypePO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TourTypePO getPOByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object delByPrimaryKeyList_tx(List idList) {
		if(idList != null && idList.size() > 0){
			tourTypeMapper.deleteTourType(idList);
		}
		Map<String,String> map = new HashMap<String,String>();
		map.put("success", idList.size()+"");
		return map;
	}

}
