package com.product.sys.resource.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.product.common.dao.SuperMapper;
import com.product.sys.resource.po.ResourcePO;
import com.product.sys.role.po.RolePO;

public interface ResourceMapper extends SuperMapper<ResourcePO>{
	
	public List<ResourcePO> getResourceByRoleID(@Param("roleID")String roleID);

}
