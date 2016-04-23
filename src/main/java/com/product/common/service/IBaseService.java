package com.product.common.service;

import com.github.pagehelper.PageInfo;

/**
 * 
 * <p>Title: IBaseService</p>
 * <p>Description: 通用的SERVICE层接口，以_tx结尾的方法，自动开启事务
 * 当然你也可以采用注解的方式</p>
 * @author xie
 * @date 2016-4-22 下午8:12:22
 */
public interface IBaseService<T> {
	
	/**
	 * 返回分页及数据信息
	 * @param pageInfo
	 * @return
	 */
	public PageInfo getPageInfo(PageInfo pageInfo);
	
	/**
	 * 新增一个T类型的数据至数据库
	 * @param t
	 * @return
	 */
	public T add_tx(T t);
	
	/**
	 * 更新
	 * @param t
	 * @return
	 */
	public T update_tx(T t);
	
	/**
	 * 删除
	 * @param t
	 * @return
	 */
	public Object del_tx(T t);
}
