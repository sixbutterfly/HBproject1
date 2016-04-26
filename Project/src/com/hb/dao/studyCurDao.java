package com.hb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.dto.studyCurDto;
import com.hb.util.DB;

public class studyCurDao {

	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public studyCurDao() {
		conn = DB.getConnection();
	}

	public ArrayList<studyCurDto> sellectAll() {
		ArrayList<studyCurDto> list = new ArrayList<>();
		String sql = "select curName, curDate, last_day(curDate) as endDate, curSupply from studyCur order by curNo";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				studyCurDto dto = new studyCurDto();
				dto.setCurName(rs.getString("curName"));
				dto.setCurDate(rs.getDate("curDate"));
				dto.setCurDateEnd(rs.getDate("endDate"));
				dto.setCurSupply(rs.getInt("curSupply"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
}
