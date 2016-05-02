package com.hb.model.qna;

import java.util.Date;

public class qnadto {

	private int qnaNo;
	private int rn;
	private int total;
	private String qnaTitle;
	private String qnaContent;
	private Date qnaDate;
	private String qnaName;
	
	public int getQnaNo() {
		return qnaNo;
	}
	public int getRn() {
		return rn;
	}
	public int getTotal() {
		return total;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public String getQnaName() {
		return qnaName;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
	public void setQnaName(String qnaName) {
		this.qnaName = qnaName;
	}
}
