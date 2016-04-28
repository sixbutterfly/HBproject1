package com.hb.model.student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hb.util.DB;

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
