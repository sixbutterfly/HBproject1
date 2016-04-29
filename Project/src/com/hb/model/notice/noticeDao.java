package com.hb.model.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.DB;

public class noticeDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public noticeDao() {
		conn = DB.getConnection();
	}

	public ArrayList<noticeDto> selectAll() {
		ArrayList<noticeDto> list = new ArrayList<>();
		String sql = "select * from notice";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				noticeDto dto = new noticeDto();
				dto.setNotNo(rs.getInt("notNo"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setNotDate(rs.getDate("notDate"));
				dto.setName(rs.getString("name"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){rs.close();}
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return list;
	}
}
