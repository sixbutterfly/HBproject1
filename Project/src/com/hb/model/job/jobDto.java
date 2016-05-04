package com.hb.model.job;

import java.sql.Date;

public class jobDto {

	private int jobNo;
	private String jobTitle;
	private String jobContent;
	private Date jobDate;
	private String jobName;
	private int rn;
	private int total;
	
	public int getRn() {
		return rn;
	}
	public int getTotal() {
		return total;
	}
	public int getJobNo() {
		return jobNo;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public String getJobContent() {
		return jobContent;
	}
	public Date getJobDate() {
		return jobDate;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public void setJobContent(String jobContent) {
		this.jobContent = jobContent;
	}
	public void setJobDate(Date jobDate) {
		this.jobDate = jobDate;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}
