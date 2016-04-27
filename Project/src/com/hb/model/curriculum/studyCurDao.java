package com.hb.model.curriculum;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import com.hb.model.sturoom.sturoomDao;
import com.hb.util.DB;

public class studyCurDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public studyCurDao() {
		conn = DB.getConnection();
	}

	public ArrayList<studyCurDto> selectAll() {
		ArrayList<studyCurDto> list = new ArrayList<>();
		String sql = "SELECT CURNO, CURNAME, CURDATE, LAST_DAY(CURDATE) AS ENDDATE, CURSUPPLY FROM STUDYCUR ORDER BY CURNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				studyCurDto dto = new studyCurDto();
				dto.setCurNo(rs.getInt("curNo"));
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
	}//selectAll end

	public studyCurDto selectOne(int curNo) {
		studyCurDto dto = new studyCurDto();
		String sql = "SELECT * FROM STUDYCUR WHERE CURNO="+curNo;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setCurNo(rs.getInt("curNo"));
				dto.setCurName(rs.getString("curName"));
				dto.setCurDate(rs.getDate("curDate"));
				dto.setCurLocation(rs.getString("curLocation"));
				dto.setCurSupply(rs.getInt("curSupply"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}//selectOne end

	public int editOne(int curNo, String curDate, String curLocation, int curSupply) {
		int result = 0;
		String sql = "update studyCur set curDate='"+curDate+"', curLocation='"+curLocation+"', curSupply="+curSupply+" WHERE CURNO="+curNo;
		String sql2 = "update sturoom set curNo=null where curNo="+curNo;
		String sql3 = "update sturoom set curNo="+curNo+" where roomNo=substr('"+curLocation+"',1,1)";
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
			pstmt = conn.prepareStatement(sql2);
			result = pstmt.executeUpdate();
			pstmt = conn.prepareStatement(sql3);
			result = pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {e1.printStackTrace();}
		}finally{
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {e.printStackTrace();}
		}
		return result;
	}//editOne end

	public int addOne(String curName, String curDate, String curLocation, int curSupply) {
		int result = 0;
		String sql = "insert into studyCur (curNo,curName,curDate,curLocation,curSupply) values (cur_seq.nextval, '"+curName+"', '"+curDate+"', '"+curLocation+"', "+curSupply+")";
		String sql2 = "update sturoom set curNo=(select max(curNo) from studyCur ) where roomNo=substr('"+curLocation+"',1,1)";
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
			pstmt = conn.prepareStatement(sql2);
			result = pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {e1.printStackTrace();}
		}finally{
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {e.printStackTrace();}
		}
		return result;
	}//addOne end

	public int deleteOne(int curNo) {
		int result = 0;
		String sql = "update sturoom set curNo=null where curNo="+curNo;
		String sql2 = "delete from studyCur where curNo="+curNo;
		System.out.println(sql);
		System.out.println(sql2);
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
			pstmt = conn.prepareStatement(sql2);
			result = pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {e1.printStackTrace();}
		}finally{
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {e.printStackTrace();}
		}
		return result;
	}//deleteOne end
	
	
}
