package com.hb.model.teacher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hb.util.DB;

public class TeacherDto {
	
	private int tchno;
	private String tchname;
	private int roomno;
	
	public int getRoomno() {
		return roomno;
	}

	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}

	public int getTchno() {
		return tchno;
	}

	public void setTchno(int tchno) {
		this.tchno = tchno;
	}

	public String getTchname() {
		return tchname;
	}

	public void setTchname(String tchname) {
		this.tchname = tchname;
	}

	
}
