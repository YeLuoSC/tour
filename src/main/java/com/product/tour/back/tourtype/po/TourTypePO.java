package com.product.tour.back.tourtype.po;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;
@NameStyle(Style.normal)
@JsonIgnoreProperties(ignoreUnknown=true)
@Table(name="TOU_T_TOURTYPE")
public class TourTypePO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer tourTypeId;
	
	@Column(name="tourTypeName")
	private String tourTypeName;
	
	@Column(name="status")
	private String status;

	public Integer getTourTypeId() {
		return tourTypeId;
	}

	public void setTourTypeId(Integer tourTypeId) {
		this.tourTypeId = tourTypeId;
	}

	public String getTourTypeName() {
		return tourTypeName;
	}

	public void setTourTypeName(String tourTypeName) {
		this.tourTypeName = tourTypeName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
