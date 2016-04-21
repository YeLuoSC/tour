package com.product.tour.back.tourtype.po;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
@Table(name="TOU_T_TOURTYPE")
public class TourTypePO {
	@Id
	@GeneratedValue(generator = "JDBC")
	private Integer id;
	
	@Column(name="tourType_Name")
	private String tourTypeName;
	
	@Column(name="status")
	private String status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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
