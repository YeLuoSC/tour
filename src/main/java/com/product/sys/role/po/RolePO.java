package com.product.sys.role.po;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.product.sys.resource.po.ResourcePO;
@Table(name="COM_ROLE")
public class RolePO {
	@Id
	@Column(name="roleID")
	@GeneratedValue(generator = "UUID")
	private String roleID;
	
	@Column(name="roleName")
	private String roleName;
	
	@Column(name="status")
	private String status;
	
//	private List<ResourcePO> resources;

	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRoleID() {
		return roleID;
	}
	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
//	public List<ResourcePO> getResources() {
//		return resources;
//	}
//	public void setResources(List<ResourcePO> resources) {
//		this.resources = resources;
//	}
}

