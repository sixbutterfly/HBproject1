package com.hb.model.sturoom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.model.curriculum.studyCurDto;
import com.hb.util.DB;

public class sturoomDao {

	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public sturoomDao() {
		conn = DB.getConnection();
	}

	public ArrayList<sturoomDto> selectNull() {
		ArrayList<sturoomDto> list = new ArrayList<>();
		String sql = "SELECT * FROM STUROOM WHERE CURNO IS NULL ORDER BY ROOMNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				sturoomDto dto = new sturoomDto();
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
	
}
