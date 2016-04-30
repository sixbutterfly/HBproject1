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
		String sql = "select * from notice order by notNo desc";
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
	}//selectAll end

	public noticeDto selectOne(int notNo) {
		noticeDto dto = new noticeDto();
		String sql = "select * from notice where notNo="+notNo;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setNotNo(rs.getInt("notNo"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setNotDate(rs.getDate("notDate"));
				dto.setName(rs.getString("name"));
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
		return dto;
	}//selectOne end

	public int addOne(String title, String name, String content) {
		int result = 0;
		String sql = "insert into notice (notNo, title, notDate, name, content) values (not_seq.nextval,'"+title+"',sysdate,'"+name+"',?)";
		try {
			pstmt = conn.prepareStatement(sql);
			StringBuffer sb = new StringBuffer();
			sb.append(content);
			String clobContent = sb.toString();
			pstmt.setString(1, clobContent);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return result;
	}//addOne end
	
}
