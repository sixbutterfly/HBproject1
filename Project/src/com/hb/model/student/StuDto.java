package com.hb.model.student;

public class StuDto {
	
	private int stuno;
	private String stuname;
	private String roomno;
	
	public String getRoomno() {
		return roomno;
	}
	public void setRoomno(String roomno) {
		this.roomno = roomno;
	}
	
	
	public int getStuno() {
		return stuno;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuno(int stuno) {
		this.stuno = stuno;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	
}
