package com.product.tour.back.attraction.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.product.common.po.PageParam;
import com.product.common.po.SearchParam;
import com.product.tour.back.attraction.dao.AttractionMapper;
import com.product.tour.back.attraction.po.AttractionPO;
import com.product.tour.back.attraction.service.IAttractionService;
import com.product.tour.back.tourtype.po.TourTypePO;
@Service
public class AttractionServiceImpl implements IAttractionService{

	@Resource
	private AttractionMapper attractionMapper;

	@Override
	public PageParam getPageInfo(PageParam pageParam) {
		PageHelper.startPage(pageParam.getPageNum(),pageParam.getPageSize());
		List<AttractionPO> list = null;
		String attractionName = null;
		if(pageParam.getSearchParams() != null && pageParam.getSearchParams().size() > 0){
			List<SearchParam> sps = pageParam.getSearchParams();
			for(SearchParam sp : sps){
				attractionName = "%" + sp.getValue() +"%";
			}
		}
		list = attractionMapper.getAttraction(attractionName);
		PageParam result = new PageParam(list);
		return result;
	}

	@Override
	public AttractionPO add_tx(AttractionPO attractionPO) {
		attractionMapper.insert(attractionPO);
		return attractionPO;
	}

	@Override
	public AttractionPO update_tx(AttractionPO attractionPO) {
		attractionMapper.updateByPrimaryKey(attractionPO);
		return attractionPO;
	}

	@Override
	public Object del_tx(AttractionPO t) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public AttractionPO getPOByPrimaryKey(Integer id) {
		return attractionMapper.getAttractionByAttractionId(id);
	}

	@Override
	public Object delByPrimaryKeyList_tx(List<String> idList) {
		if(idList != null && idList.size() > 0){
			attractionMapper.deleteAttraction(idList);
		}
		Map<String,String> map = new HashMap<String,String>();
		map.put("success", idList.size()+"");
		return map;
	}

}
