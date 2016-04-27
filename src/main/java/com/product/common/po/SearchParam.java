package com.product.common.po;

/**
 * 
 * <p>Title: SearchParam</p>
 * <p>Description: 前台搜索栏封装的实体对象</p>
 * @author xie
 * @date 2016-4-26 下午7:32:09
 */
public class SearchParam {

	private String key;
	
	private Object value;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Object getValue() {
		return value;
	}

	public void setValue(Object value) {
		this.value = value;
	}
	
	
}
