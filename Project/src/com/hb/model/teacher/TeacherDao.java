package com.hb.model.teacher;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.util.DB;

public class TeacherDao {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	String sql;
	
	public TeacherDao() {
		conn = DB.getConnection();
	}

	public ArrayList<TeacherDto> selectAll() {
		ArrayList<TeacherDto> list = new ArrayList();
		sql = "select tchno, tchname, roomno from TEACHER";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				TeacherDto bean = new TeacherDto();
				bean.setTchno(rs.getInt("tchno"));
				bean.setTchname(rs.getString("tchname"));
				bean.setRoomno(rs.getInt("roomno"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public int updateAll(String[] tchlist, String[] roomlist) {
		int result = 0;
		sql = "update teacher set roomno = ? where tchno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < tchlist.length; i++) {
			System.out.println("½ÇÇà");
				pstmt.setInt(1, Integer.parseInt(roomlist[i]));
				pstmt.setInt(2, Integer.parseInt(tchlist[i]));
				result = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
				System.out.println("»Ñ??");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}
}
