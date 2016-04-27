package com.hb.controller.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.StringTokenizer;

public class RegisterDao {
	PreparedStatement pstmt;
	Connection conn;
	ResultSet rs;
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	int result;
	int memno;
	
	public RegisterDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
	}
	
	public int getMemno() {
		String sql="SELECT MEMNO FROM MEMBER WHERE MEMID='hyunyong'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result = rs.getInt("memno");
			}
		} catch (SQLException e) {e.printStackTrace();}
		return result;
	}
	
	public void registerClass(String name, String email, String tel, String gubun, String job, String jobinfo, String time, String pay, String content, String password, String file1, String file2) {
		try {
			memno = getMemno();
			String sql="INSERT INTO REGISTER (REGNO, MEMNO, NAME, EMAIL, TEL, GUBUN, JOB, JOBINFO, TIME, PAY, CONTENT, PASSWORD, FILE1, FILE2) VALUES " +
					"(REGNO_SEQ.NEXTVAL, "+memno+", ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,	name);
			pstmt.setString(2,	email);
			pstmt.setString(3,	tel);
			pstmt.setString(4,	gubun);
			pstmt.setString(5,	job);
			pstmt.setString(6,	jobinfo);
			pstmt.setString(7,	time);
			pstmt.setString(8,	pay);
			pstmt.setString(9,	content);
			pstmt.setString(10,	password);
			pstmt.setString(11,	file1);
			pstmt.setString(12,	file2);
			System.out.println(jobinfo);
			// result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}