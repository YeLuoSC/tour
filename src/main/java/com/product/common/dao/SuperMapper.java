package com.product.common.dao;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * 
 * <p>Title: SuperMapper</p>
 * <p>Description:通用MAPPER接口，实现该接口将默认带有通用的一些方法；使用
 * 方法可以详见通用MAPPER说明 </p>
 * @author xie
 * @date 2016-4-22 下午8:11:33
 */
public interface SuperMapper<T> extends Mapper<T>,MySqlMapper<T>{

}
