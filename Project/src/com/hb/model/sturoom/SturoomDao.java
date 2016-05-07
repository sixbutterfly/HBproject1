package com.hb.model.sturoom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.util.DB;
public class SturoomDao {

	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String sql;
	
	public SturoomDao() {
		conn = DB.getConnection();
	}

	public ArrayList<SturoomDto> selectNull() {
		ArrayList<SturoomDto> list = new ArrayList<>();
		sql = "SELECT * FROM STUROOM WHERE CURNO IS NULL ORDER BY ROOMNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				SturoomDto dto = new SturoomDto();
				dto.setRoomNo(rs.getInt("roomNo"));
				dto.setCurNo(rs.getInt("curNo"));
				dto.setTchNo(rs.getInt("tchNo"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}//selectAll end
	
	public ArrayList<SturoomDto> selectAll() {
		ArrayList<SturoomDto> list = new ArrayList<SturoomDto>();
		sql = "select roomno from sturoom order by roomno";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SturoomDto bean = new SturoomDto();
				bean.setRoomNo(rs.getInt("roomno"));
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
				pstmt.setInt(1, Integer.parseInt(tchlist[i]));
				pstmt.setString(2, roomlist[i]);
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}
	public int delRoom(String[] roomlist) {
		int result = 0;
		sql = "delete from sturoom where roomno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < roomlist.length; i++) {
					pstmt.setString(1, roomlist[i]);
					result = pstmt.executeUpdate();
				}
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		return result;
	}
}
