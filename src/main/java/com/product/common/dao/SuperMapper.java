package com.product.common.dao;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * 
 * <p>Title: SuperMapper</p>
 * <p>Description:ͨ��MAPPER�ӿڣ�ʵ�ָýӿڽ�Ĭ�ϴ���ͨ�õ�һЩ������ʹ��
 * �����������ͨ��MAPPER˵�� </p>
 * @author xie
 * @date 2016-4-22 ����8:11:33
 */
public interface SuperMapper<T> extends Mapper<T>,MySqlMapper<T>{

}
