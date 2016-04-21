package com.product.sys.login.dao;

import org.apache.ibatis.annotations.Param;

import com.product.common.dao.SuperMapper;
import com.product.sys.user.po.UserPO;

public interface BackLoginMapper extends SuperMapper<UserPO>{
	
	public UserPO getUserPO(@Param("userName")String userName,@Param("password")String password);
	
}
