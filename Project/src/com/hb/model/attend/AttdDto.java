package com.hb.model.attend;

import java.util.Date;

public class AttdDto {
	private int attdNo;
	private int stuNo;
	private String attdValue;
	private Date attdDate;
	
	public int getAttdNo() {
		return attdNo;
	}
	public int getStuNo() {
		return stuNo;
	}
	public String getAttdValue() {
		return attdValue;
	}
	public Date getAttdDate() {
		return attdDate;
	}
	public void setAttdNo(int attdNo) {
		this.attdNo = attdNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public void setAttdValue(String attdValue) {
		this.attdValue = attdValue;
	}
	public void setAttdDate(Date attdDate) {
		this.attdDate = attdDate;
	}
	
	
}
