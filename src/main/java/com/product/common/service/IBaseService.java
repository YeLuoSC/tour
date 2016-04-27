package com.product.common.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.product.common.po.PageParam;

/**
 * 
 * <p>Title: IBaseService</p>
 * <p>Description: ͨ�õ�SERVICE��ӿڣ���_tx��β�ķ������Զ���������
 * ��Ȼ��Ҳ���Բ���ע��ķ�ʽ</p>
 * @author xie
 * @date 2016-4-22 ����8:12:22
 */
public interface IBaseService<T> {
	
	/**
	 * ���ط�ҳ��������Ϣ
	 * @param pageInfo
	 * @return
	 */
	public PageParam getPageInfo(PageParam pageParam);
	
	/**
	 * ����һ��T���͵����������ݿ�
	 * @param t
	 * @return
	 */
	public T add_tx(T t);
	
	/**
	 * ����
	 * @param t
	 * @return
	 */
	public T update_tx(T t);
	
	/**
	 * ɾ��
	 * @param t
	 * @return
	 */
	public Object del_tx(T t);
	
	/**
	 * ͨ������id��ѯʵ���࣬�����ڸ���ʱ��ȡʵ������Ϣ
	 * @param id
	 * @return
	 */
	public T getPOByPrimaryKey(Integer id);
	
	/**
	 * ͨ����������ɾ����Ӧ��������
	 * @param idList
	 * @return
	 */
	public Object delByPrimaryKeyList_tx(List<String> idList);
}
