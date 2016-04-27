package com.product.common.po;

/**
 * 
 * <p>Title: OrderParam</p>
 * <p>Description: 前台封装的排序实体类对象</p>
 * @author xie
 * @date 2016-4-26 下午7:33:37
 */
public class OrderParam {

	private String key;
	
	/**
	 * 未来考虑枚举类型，ASC,DESC
	 */
	private String direction;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}
	
	
}
