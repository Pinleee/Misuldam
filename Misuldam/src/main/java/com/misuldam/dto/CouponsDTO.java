package com.misuldam.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class CouponsDTO {
	
	private int couponId;
	private String couponCode;
	private double discout;
	private Date expirationDate;
	private Timestamp createdAt;
	
	public int getCouponId() {
		return couponId;
	}
	public void setCouponId(int couponId) {
		this.couponId = couponId;
	}
	public String getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	public double getDiscout() {
		return discout;
	}
	public void setDiscout(double discout) {
		this.discout = discout;
	}
	public Date getExpirationDate() {
		return expirationDate;
	}
	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}
	public Timestamp getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
	
	
}
