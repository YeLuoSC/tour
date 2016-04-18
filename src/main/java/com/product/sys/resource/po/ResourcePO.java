package com.product.sys.resource.po;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="COM_RESOURCE")
public class ResourcePO {
	@Id
	@Column(name="resourceID")
	@GeneratedValue(generator = "UUID")
	private String resourceID;
	
	@Column(name="url")
	private String url;
	
	@Column(name="status")
	private String status;
	
	@Column(name="resourceName")
	private String resourceName;

	public String getResourceID() {
		return resourceID;
	}
	public void setResourceID(String resourceID) {
		this.resourceID = resourceID;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getResourceName() {
		return resourceName;
	}
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}