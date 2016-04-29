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
	
	GradeDto bean = new GradeDto();
	ArrayList<GradeDto> al = new ArrayList<GradeDto>();
	
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
		sql="SELECT STUDENT.STUNO, MEMBER.MEMNAME, STUDENT.ROOMNO, NVL(GRADE.JAVAGRADE, 0) JAVAGRADE , NVL(GRADE.WEBGRADE, 0) WEBGRADE , NVL(GRADE.FRAMEGRADE, 0) FRAMEGRADE FROM STUDENT, MEMBER, GRADE WHERE MEMBER.MEMNO=STUDENT.MEMNO AND STUDENT.STUNO=GRADE.STUNO ORDER BY STUNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bean.setStuno(rs.getInt("stuno"));
				System.out.print("학번 : "+bean.getStuno());
				bean.setMemname(rs.getString("memname"));
				System.out.print(", 이름 : "+bean.getMemname());
				bean.setRoomno(rs.getInt("roomno"));
				System.out.print(", 강의실 : "+bean.getRoomno());
				bean.setJavagrade(rs.getString("javagrade"));
				System.out.print(", 자바 : "+bean.getJavagrade());
				bean.setWebgrade(rs.getString("webgrade"));
				System.out.print(", 웹 : "+bean.getWebgrade());
				bean.setFramegrade(rs.getString("framegrade"));
				System.out.println(", 프레임워크 : "+bean.getFramegrade());
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
}