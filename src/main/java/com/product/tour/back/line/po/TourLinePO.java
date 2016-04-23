package com.product.tour.back.line.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import com.product.common.jackson.CustomDateSerializer;
import com.product.tour.back.tourtype.po.TourTypePO;

@JsonIgnoreProperties(ignoreUnknown=true)
@Table(name="TOU_T_TOURLINE")
public class TourLinePO {

	@Id
	@GeneratedValue(generator = "JDBC")
	private Integer tourlineid;
	
	@Column(name="tourTypeId")
	private Integer tourTypeId; 
	
	@Column(name="tourLineName")
	private String tourLineName;
	
	@Column(name="status")
	private String status;
	
	@Column(name="price")
	private Double price;
	
	@Column(name="startDate")
	private Date startDate;
	
	@Column(name="summary")
	private String summary;
	
	@Column(name="info")
	private String info;
	
	@Column(name="orderId")
	private Integer orderId;
	
	@Column(name="visiable")
	private String visiable;
	
	@Transient
	private TourTypePO tourTypePO;


	
	public Integer getTourlineid() {
		return tourlineid;
	}

	public void setTourlineid(Integer tourlineid) {
		this.tourlineid = tourlineid;
	}

	public Integer getTourTypeId() {
		return tourTypeId;
	}

	public void setTourTypeId(Integer tourTypeId) {
		this.tourTypeId = tourTypeId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	public String getTourLineName() {
		return tourLineName;
	}

	public void setTourLineName(String tourLineName) {
		this.tourLineName = tourLineName;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@JsonSerialize(using = CustomDateSerializer.class)
	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
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

	public TourTypePO getTourTypePO() {
		return tourTypePO;
	}

	public void setTourTypePO(TourTypePO tourTypePO) {
		this.tourTypePO = tourTypePO;
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
	
	
}
