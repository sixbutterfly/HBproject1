package com.hb.model.notice;

import java.util.Date;

public class noticeDto {

	private int notNo;
	private String title;
	private String content;
	private Date notDate;
	private String name;
	
	public int getNotNo() {
		return notNo;
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
}
