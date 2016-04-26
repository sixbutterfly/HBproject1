package com.hb.dto;

import java.util.Date;

public class studyCurDto {

	private int curNo;
	private String curName;
	private String Location;
	private Date curDate;
	private int curSupply;
	
	public int getCurNo() {
		return curNo;
	}
	public String getCurName() {
		return curName;
	}
	public String getLocation() {
		return Location;
	}
	public Date getCurDate() {
		return curDate;
	}
	public int getCurSupply() {
		return curSupply;
	}
	public void setCurNo(int curNo) {
		this.curNo = curNo;
	}
	public void setCurName(String curName) {
		this.curName = curName;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public void setCurDate(Date curDate) {
		this.curDate = curDate;
	}
	public void setCurSupply(int curSupply) {
		this.curSupply = curSupply;
	}
}
