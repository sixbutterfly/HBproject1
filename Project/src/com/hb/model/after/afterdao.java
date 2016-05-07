package com.hb.model.after;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.model.notice.noticeDto;
import com.hb.util.DB;

public class afterdao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public afterdao() {
		conn = DB.getConnection();
	}

	public ArrayList<afterdto> selectAll() {
		ArrayList<afterdto> list = new ArrayList<>();
		String sql = "select * from after";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				afterdto dto = new afterdto();
				dto.setAftNo(rs.getInt("aftNo"));
				dto.setAftTitle(rs.getString("aftTitle"));
				dto.setAftDate(rs.getDate("aftDate"));
				dto.setAftName(rs.getString("aftName"));
				dto.setAftContent(rs.getString("aftContent"));
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

	public afterdto count() {
		afterdto dto = new afterdto();
		String sql = "select count(*) as cnt from after";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setTotal(rs.getInt("cnt"));
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
	}//count end
	
	public ArrayList<afterdto> selectList() {
		ArrayList<afterdto> list = new ArrayList<>();
		String sql = "select * from (select rownum as rn,aftNo,aftTitle,aftContent,aftDate,aftName from"
				+" (select aftNo, aftTitle, aftContent, aftDate, aftName from after order by aftNo desc)) where rn between 1 and 8";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				afterdto dto = new afterdto();
				dto.setAftNo(rs.getInt("aftNo"));
				dto.setAftTitle(rs.getString("aftTitle"));
				dto.setAftDate(rs.getDate("aftDate"));
				dto.setAftName(rs.getString("aftName"));
				dto.setAftContent(rs.getString("aftContent"));
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
	
	public ArrayList<afterdto> selectAll(String keyword, int pStart, int pEnd) {
		ArrayList<afterdto> list = new ArrayList<>();
		String subsql = "select aftNo, aftTitle, aftContent, aftDate, aftName from after "+keyword+" order by aftNo desc";
		String sql = "select * from (select rownum as rn, aftNo, aftTitle, aftContent, aftDate, aftName from ("+subsql+")) where rn between "+pStart+" and "+pEnd;
		//System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				afterdto dto = new afterdto();
				dto.setRn(rs.getInt("rn"));
				dto.setAftNo(rs.getInt("aftNo"));
				dto.setAftTitle(rs.getString("aftTitle"));
				dto.setAftContent(rs.getString("aftContent"));
				dto.setAftDate(rs.getDate("aftDate"));
				dto.setAftName(rs.getString("aftName"));
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

	public int addOne(String aftTitle, String aftName, String aftContent) {
		int result = 0;
		String sql = "insert into after (aftNo, aftTitle, aftDate, aftName, aftContent) values (aft_seq.nextval,?,sysdate,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, aftTitle);
			pstmt.setString(2, aftName);
			StringBuffer sb = new StringBuffer();
			sb.append(aftContent);
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

	public afterdto selectOne(int aftNo) {
		afterdto dto = new afterdto();
		String sql = "select * from after where aftNo="+aftNo;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setAftNo(rs.getInt("aftNo"));
				dto.setAftTitle(rs.getString("aftTitle"));
				dto.setAftContent(rs.getString("aftContent"));
				dto.setAftDate(rs.getDate("aftDate"));
				dto.setAftName(rs.getString("aftName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return dto;
	}//selectOne end

	public int deleteOne(int aftNo) {
		int result = 0;
		String sql = "delete from after where aftNo="+aftNo;
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

	public int updateOne(int aftNo, String aftTitle, String aftContent) {
		int result = 0;
		String sql = "update after set aftDate=sysdate, aftTitle='"+aftTitle+"', aftContent='"+aftContent+"' where aftNo="+aftNo;
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
