package com.product.sys.role.dao;

import java.util.List;

import javax.management.relation.Role;

import org.apache.ibatis.annotations.Param;

import com.product.common.dao.SuperMapper;
import com.product.sys.role.po.RolePO;

public interface RoleMapper extends SuperMapper<RolePO>{
	
	public List<RolePO> getRoleByUserName(@Param("userName")String userName);
	
}
