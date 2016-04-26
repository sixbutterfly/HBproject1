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
	private String curlocation;
	private String curname;
	
	public int getStuno() {
		return stuno;
	}
	public String getStuname() {
		return stuname;
	}
	public String getCurlocation() {
		return curlocation;
	}
	public String getCurname() {
		return curname;
	}
	public void setStuno(int stuno) {
		this.stuno = stuno;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public void setCurlocation(String curlocation) {
		this.curlocation = curlocation;
	}
	public void setCurname(String curname) {
		this.curname = curname;
	}
	
}
