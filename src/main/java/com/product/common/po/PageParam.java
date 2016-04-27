package com.product.common.po;

import java.util.List;
import java.util.Map;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import com.github.pagehelper.PageInfo;
import com.product.tour.back.line.po.TourLinePO;
@JsonIgnoreProperties(ignoreUnknown=true)
public class PageParam<T> extends PageInfo<T>{

	private List<SearchParam> searchParams;
	
	private List<OrderParam> orderParams;

	public PageParam() {
		super();
	}
	
	public PageParam(List<T> list){
		super(list);
	}

	public PageParam(List<T> list,PageParam orignal){
		super(list);
		this.setSearchParams(orignal.getSearchParams());
		this.setOrderParams(orignal.getOrderParams());
	}
	
	public List<SearchParam> getSearchParams() {
		return searchParams;
	}

	public void setSearchParams(List<SearchParam> searchParams) {
		this.searchParams = searchParams;
	}

	public List<OrderParam> getOrderParams() {
		return orderParams;
	}

	public void setOrderParams(List<OrderParam> orderParams) {
		this.orderParams = orderParams;
	}

	
}
