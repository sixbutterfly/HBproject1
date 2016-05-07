package com.hb.model.jobafter;

import java.sql.Date;

public class jobafterDto {

	private int jafNo;
	private String jafTitle;
	private String jafContent;
	private Date jafDate;
	private String jafName;
	private int rn;
	private int total;
	
	public int getJafNo() {
		return jafNo;
	}
	public String getJafTitle() {
		return jafTitle;
	}
	public String getJafContent() {
		return jafContent;
	}
	public Date getJafDate() {
		return jafDate;
	}
	public String getJafName() {
		return jafName;
	}
	public int getRn() {
		return rn;
	}
	public int getTotal() {
		return total;
	}
	public void setJafNo(int jafNo) {
		this.jafNo = jafNo;
	}
	public void setJafTitle(String jafTitle) {
		this.jafTitle = jafTitle;
	}
	public void setJafContent(String jafContent) {
		this.jafContent = jafContent;
	}
	public void setJafDate(Date jafDate) {
		this.jafDate = jafDate;
	}
	public void setJafName(String jafName) {
		this.jafName = jafName;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}
