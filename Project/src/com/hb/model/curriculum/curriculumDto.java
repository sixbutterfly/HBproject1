package com.hb.model.curriculum;

import java.util.Date;

public class curriculumDto {
	private int curNo;
	private String curName;
	private String curLocation;
	private int curSupply;
	private Date curDate;
	private Date curDateEnd;
	
	public int getCurNo() {
		return curNo;
	}
	public String getCurName() {
		return curName;
	}
	public String getCurLocation() {
		return curLocation;
	}
	public int getCurSupply() {
		return curSupply;
	}
	public Date getCurDate() {
		return curDate;
	}
	public void setCurNo(int curNo) {
		this.curNo = curNo;
	}
	public void setCurName(String curName) {
		this.curName = curName;
	}
	public void setCurLocation(String location) {
		curLocation = location;
	}
	public void setCurSupply(int curSupply) {
		this.curSupply = curSupply;
	}
	public void setCurDate(Date curDate) {
		this.curDate = curDate;
	}
	public Date getCurDateEnd() {
		return curDateEnd;
	}
	public void setCurDateEnd(Date curDateEnd) {
		this.curDateEnd = curDateEnd;
	}
}