package com.hb.model.room;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.model.teacher.TeacherDto;
import com.hb.util.DB;

public class RoomDao {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	String sql;

	public RoomDao() {
		conn = DB.getConnection();
	}

	public ArrayList selectAll() {
		ArrayList<RoomDto> list = new ArrayList();
		sql = "select roomno from sturoom";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				RoomDto bean = new RoomDto();
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
		sql = "update sturoom set tchno = ? where roomno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < tchlist.length; i++) {
			System.out.println("½ÇÇà");
				pstmt.setInt(1, Integer.parseInt(tchlist[i]));
				pstmt.setInt(2, Integer.parseInt(roomlist[i]));
				result = pstmt.executeUpdate();
				System.out.println(Integer.parseInt(tchlist[i]));
				System.out.println(Integer.parseInt(roomlist[i]));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
