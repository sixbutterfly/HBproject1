package com.hb.controller.mypage.teacher;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GradeDao {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	String sql="";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void GradeDao() {
	}
	
	public void list() {
		sql="SELECT JAVAGRADE, WEBGRADE, FRAMEGRADE FROM GRADE WHERE STUNO=?";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 4);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String javagrade = rs.getString("javagrade");
				String webgrade = rs.getString("webgrade");
				String framegrade = rs.getString("framegrade");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}