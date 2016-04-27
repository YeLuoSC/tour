package com.product.common.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.product.common.po.PageParam;

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
	public PageParam getPageInfo(PageParam pageParam);
	
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
	
	/**
	 * 通过主键id查询实体类，多用于更新时获取实体类信息
	 * @param id
	 * @return
	 */
	public T getPOByPrimaryKey(Integer id);
	
	/**
	 * 通过主键集合删除对应的数据行
	 * @param idList
	 * @return
	 */
	public Object delByPrimaryKeyList_tx(List<String> idList);
}
