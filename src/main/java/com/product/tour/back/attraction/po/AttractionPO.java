package com.product.tour.back.attraction.po;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

import com.product.tour.back.city.po.CityPO;

@NameStyle(Style.normal)
@JsonIgnoreProperties(ignoreUnknown=true)
@Table(name="TOU_T_ATTRACTION")
public class AttractionPO {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer attractionId;
	
	@Column(name="attractionName")
	private String attractionName; 
	
	@Column(name="cityId")
	private Integer cityId; 
	
	@Column(name="summary")
	private String summary;
	
	@Column(name="info")
	private String info;
	
	@Column(name="status")
	private String status;
	
	@Column(name="orderId")
	private Integer orderId;
	
	@Column(name="visiable")
	private String visiable;
	
	@Column(name="thumbnail")
	private String thumbnail;
	
	@Transient
	private CityPO cityPO;

	public Integer getAttractionId() {
		return attractionId;
	}

	public void setAttractionId(Integer attractionId) {
		this.attractionId = attractionId;
	}

	public String getAttractionName() {
		return attractionName;
	}

	public void setAttractionName(String attractionName) {
		this.attractionName = attractionName;
	}

	public Integer getCityId() {
		return cityId;
	}

	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public CityPO getCityPO() {
		return cityPO;
	}

	public void setCityPO(CityPO cityPO) {
		this.cityPO = cityPO;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getVisiable() {
		return visiable;
	}

	public void setVisiable(String visiable) {
		this.visiable = visiable;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	
	
}
