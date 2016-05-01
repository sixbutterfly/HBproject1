package com.hb.model.notice;

import java.util.Date;

public class noticeDto {

	private int notNo;
	private int rn;
	private String title;
	private String content;
	private Date notDate;
	private String name;
	private int total;
	
	public int getNotNo() {
		return notNo;
	}
	public int getRn() {
		return rn;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public Date getNotDate() {
		return notDate;
	}
	public String getName() {
		return name;
	}
	public void setNotNo(int notNo) {
		this.notNo = notNo;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setNotDate(Date notDate) {
		this.notDate = notDate;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}
