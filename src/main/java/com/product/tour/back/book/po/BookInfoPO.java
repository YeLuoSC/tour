package com.product.tour.back.book.po;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

import com.product.tour.back.attraction.po.AttractionPO;
import com.product.tour.back.line.po.TourLinePO;
@NameStyle(Style.normal)
@JsonIgnoreProperties(ignoreUnknown=true)
@Table(name="TOU_T_BOOKINFO")
public class BookInfoPO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer bookInfoId;
	
	private String customerName;
	
	private String fromCountry;
	
	/**
	 * 预定类型：0为景点，1为路线
	 */
	private String bookType;
	
	/**
	 * 关联预订ID，可能是景点的ID可能是路线的ID
	 */
	private Integer relationId;
	
	/**
	 * 游客留下的语言信息
	 */
	private String customerInfo;
	
	private String phoneNumber;
	
	private String email;
	
	/**
	 * 业务人员回复的信息
	 */
	private String replyInfo;
	
	private String status;

	@Transient
	private TourLinePO tourLinePO;
	
	@Transient
	private AttractionPO attractionPO;

	public Integer getBookInfoId() {
		return bookInfoId;
	}

	public void setBookInfoId(Integer bookInfoId) {
		this.bookInfoId = bookInfoId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getFromCountry() {
		return fromCountry;
	}

	public void setFromCountry(String fromCountry) {
		this.fromCountry = fromCountry;
	}

	public String getBookType() {
		return bookType;
	}

	public void setBookType(String bookType) {
		this.bookType = bookType;
	}

	public String getCustomerInfo() {
		return customerInfo;
	}

	public void setCustomerInfo(String customerInfo) {
		this.customerInfo = customerInfo;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getReplyInfo() {
		return replyInfo;
	}

	public void setReplyInfo(String replyInfo) {
		this.replyInfo = replyInfo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getRelationId() {
		return relationId;
	}

	public void setRelationId(Integer relationId) {
		this.relationId = relationId;
	}

	public TourLinePO getTourLinePO() {
		return tourLinePO;
	}

	public void setTourLinePO(TourLinePO tourLinePO) {
		this.tourLinePO = tourLinePO;
	}

	public AttractionPO getAttractionPO() {
		return attractionPO;
	}

	public void setAttractionPO(AttractionPO attractionPO) {
		this.attractionPO = attractionPO;
	}
	
	
}
