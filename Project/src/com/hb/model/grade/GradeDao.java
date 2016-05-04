package com.hb.model.grade;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hb.util.DB;

public class GradeDao {
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	String sql="";
	GradeDto bean = new GradeDto();
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public GradeDao() {
		conn = DB.getConnection();
	}
	
	public GradeDto list() {
		sql="select stuno, member.memname, roomno, javagrade, webgrade, framegrade from grade, " +
			"member where member.memno = (select memno from student)";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bean.setStuno(rs.getInt("stuno"));
				bean.setMemname(rs.getString("memname"));
				bean.setRoomno(rs.getInt("roomno"));
				bean.setJavagrade(rs.getString("javagrade"));
				bean.setWebgrade(rs.getString("webgrade"));
				bean.setFramegrade(rs.getString("framegrade"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs!=null) rs.close();
				if (pstmt!=null) pstmt.close();
				if (conn!=null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return bean;
	}
}