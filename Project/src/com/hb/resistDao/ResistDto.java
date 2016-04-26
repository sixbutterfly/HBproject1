package com.hb.resistDao;

public class ResistDto {
	String name;
	String email;
	String tel;
	String gubun;
	String job;
	String jobinfo;
	String time;
	String pay;
	String content;
	String password;
	boolean file1;
	boolean file2;
	private String getName() {
		return name;
	}
	private String getEmail() {
		return email;
	}
	private String getTel() {
		return tel;
	}
	private String getGubun() {
		return gubun;
	}
	private String getJob() {
		return job;
	}
	private String getJobinfo() {
		return jobinfo;
	}
	private String getTime() {
		return time;
	}
	private String getPay() {
		return pay;
	}
	private String getContent() {
		return content;
	}
	private String getPassword() {
		return password;
	}
	private boolean isFile1() {
		return file1;
	}
	private boolean isFile2() {
		return file2;
	}
	private void setName(String name) {
		this.name = name;
	}
	private void setEmail(String email) {
		this.email = email;
	}
	private void setTel(String tel) {
		this.tel = tel;
	}
	private void setGubun(String gubun) {
		this.gubun = gubun;
	}
	private void setJob(String job) {
		this.job = job;
	}
	private void setJobinfo(String jobinfo) {
		this.jobinfo = jobinfo;
	}
	private void setTime(String time) {
		this.time = time;
	}
	private void setPay(String pay) {
		this.pay = pay;
	}
	private void setContent(String content) {
		this.content = content;
	}
	private void setPassword(String password) {
		this.password = password;
	}
	private void setFile1(boolean file1) {
		this.file1 = file1;
	}
	private void setFile2(boolean file2) {
		this.file2 = file2;
	}
}