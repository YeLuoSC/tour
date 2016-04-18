package com.product.sys.user.po;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.product.sys.role.po.RolePO;

@Table(name="COM_USERINFO")
public class UserPO implements Serializable{
	
	private static final long serialVersionUID = 1l;
	
	@Id
	@Column(name="userid")
	@GeneratedValue(generator = "UUID")
	private String userID;
	
	@Column(name="username")
	private String userName;
	
	@Column(name="password")
	private String password;
	
	@Column(name="islock")
	private String isLock;
	
	@Column(name="status")
	private String status;
	
	@Column(name="logintime")
	private Timestamp logintime;
	
//	private List<RolePO> roles;
//	
//	public List<RolePO> getRoles() {
//		return roles;
//	}
//	public void setRoles(List<RolePO> roles) {
//		this.roles = roles;
//	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIsLock() {
		return isLock;
	}
	public void setIsLock(String isLock) {
		this.isLock = isLock;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Timestamp getLogintime() {
		return logintime;
	}
	public void setLogintime(Timestamp logintime) {
		this.logintime = logintime;
	}
	
	
}
