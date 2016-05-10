package com.hb.model.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.DB;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

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
	
	public noticeDto count() {
		noticeDto dto = new noticeDto();
		String sql = "select count(*) as cnt from notice";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setTotal(rs.getInt("cnt"));
//				System.out.println(dto.getTotal());
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
	}//count end;
	
	public ArrayList<noticeDto> selectList() {
		ArrayList<noticeDto> list = new ArrayList<>();
		String sql = "select * from (select rownum as rn,notNo,title,content,notDate,name from"
					+" (select notNo, title, content, notDate, name from notice order by notNo desc)) where rn between 1 and 8";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				noticeDto dto = new noticeDto();
				dto.setNotNo(rs.getInt("notNo"));
				dto.setTitle(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setNotDate(rs.getDate("notDate"));
				dto.setContent(rs.getString("content"));
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
	}//selectList end
	
	public ArrayList<noticeDto> selectAll(String keyword, int pStart, int pEnd) {
		ArrayList<noticeDto> list = new ArrayList<>();
		String subsql = "select notNo, title, content, notDate, name from notice "+keyword+" order by notNo desc";
		String sql = "select * from (select rownum as rn,notNo,title,content,notDate,name from ("+subsql+")) where rn between "+pStart+" and "+pEnd;
		//System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				noticeDto dto = new noticeDto();
				dto.setRn(rs.getInt("rn"));
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
		String sql = "insert into notice (notNo, title, notDate, name, content) values (not_seq.nextval,?,sysdate,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, name);
			StringBuffer sb = new StringBuffer();
			sb.append(content);
			String clobContent = sb.toString();
			pstmt.setString(3, clobContent);
			//System.out.println(sql);
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

	public int deleteOne(int notNo) {
		int result = 0;
		String sql = "delete from notice where notNo="+notNo;
		try {
			pstmt = conn.prepareStatement(sql);
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
	}//deleteOne end

	public int updateOne(int notNo, String title, String content) {
		int result = 0;
		String sql = "update notice set notDate=sysdate, title='"+title+"',content='"+content+"' where notNo="+notNo;
		try {
			pstmt = conn.prepareStatement(sql);
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
	}//updateOne end

}
