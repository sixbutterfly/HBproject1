package com.hb.model.after;

import java.util.Date;

public class afterdto {

	private int aftNo;
	private int rn;
	private int total;
	private String aftTitle;
	private String aftContent;
	private Date aftDate;
	private String aftName;
	
	public int getAftNo() {
		return aftNo;
	}
	public int getRn() {
		return rn;
	}
	public int getTotal() {
		return total;
	}
	public String getAftTitle() {
		return aftTitle;
	}
	public String getAftContent() {
		return aftContent;
	}
	public Date getAftDate() {
		return aftDate;
	}
	public String getAftName() {
		return aftName;
	}
	public void setAftNo(int aftNo) {
		this.aftNo = aftNo;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public void setAftTitle(String aftTitle) {
		this.aftTitle = aftTitle;
	}
	public void setAftContent(String aftContent) {
		this.aftContent = aftContent;
	}
	public void setAftDate(Date aftDate) {
		this.aftDate = aftDate;
	}
	public void setAftName(String aftName) {
		this.aftName = aftName;
	}
}
