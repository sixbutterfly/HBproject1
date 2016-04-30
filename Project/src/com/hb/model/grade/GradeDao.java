package com.hb.model.grade;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GradeDao {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	String sql="";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public GradeDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<GradeDto> list() {
		ArrayList<GradeDto> al = new ArrayList<GradeDto>();
		sql="SELECT STUDENT.STUNO, MEMBER.MEMNAME, STUDENT.ROOMNO, NVL(GRADE.JAVAGRADE, 0) JAVAGRADE , NVL(GRADE.WEBGRADE, 0) WEBGRADE , NVL(GRADE.FRAMEGRADE, 0) FRAMEGRADE FROM STUDENT, MEMBER, GRADE WHERE MEMBER.MEMNO=STUDENT.MEMNO AND STUDENT.STUNO=GRADE.STUNO ORDER BY STUNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				GradeDto bean = new GradeDto();
				bean.setStuno(rs.getInt("stuno"));
				bean.setMemname(rs.getString("memname"));
				bean.setRoomno(rs.getInt("roomno"));
				bean.setJavagrade(rs.getString("javagrade"));
				bean.setWebgrade(rs.getString("webgrade"));
				bean.setFramegrade(rs.getString("framegrade"));
				al.add(bean);
			}
		} catch (SQLException e) {
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
		return al;
	}
	
	public int addGrade(int stuno, String javagrade, String webgrade, String framegrade) {
		int result=0;
		sql="UPDATE GRADE SET JAVAGRADE=?, WEBGRADE=?, FRAMEGRADE=? WHERE STUNO=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, javagrade);
			pstmt.setString(2, webgrade);
			pstmt.setString(3, framegrade);
			pstmt.setInt(4, stuno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
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
		return result;
	}
}