package com.hb.model.register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.DB;

public class registerDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public registerDao() {
		conn = DB.getConnection();
	}
	
	public ArrayList<registerDto> selectNull() {
		ArrayList<registerDto> list = new ArrayList<>();
		String sql = "SELECT MEMNO, NAME, TEL, EMAIL, FILE1, FILE2 FROM REGISTER WHERE FILE1 IS NULL AND FILE2 IS NULL";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				registerDto dto = new registerDto();
				dto.setMemNo(rs.getInt("memNo"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setFile1(rs.getString("file1"));
				dto.setFile2(rs.getString("file2"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	private int getMemNo(String id) {
		int memNo = 0;
		String sql = "SELECT MEMNO FROM MEMBER WHERE MEMID='"+id+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				memNo = rs.getInt("memNo");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memNo;
	}
	
	public int registerClass(String id, String name, String email, String tel,String gubun, String job, String jobinfo, String time, String pay,String content, String password, String file1, String file2) {
		int result = 0;
		int memNo = getMemNo(id);
		String sql = "INSERT INTO REGISTER (REGNO, MEMNO, NAME, EMAIL, TEL, GUBUN, JOB, JOBINFO, TIME, PAY, CONTENT, PASSWORD, FILE1, FILE2) VALUES " +
					 "(REG_SEQ.NEXTVAL, "+memNo+", '"+name+"', '"+email+"', '"+tel+"', '"+gubun+"', '"+job+"', '"+jobinfo+"', '"+time+"', '"+pay+"', '"+content+"', '"+password+"', '"+file1+"', '"+file2+"')";
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public String getName(String id) {
		String name="";
		String sql = "SELECT MEMNAME FROM MEMBER WHERE MEMID='"+id+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				name = rs.getString("memname");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return name;
	}
}