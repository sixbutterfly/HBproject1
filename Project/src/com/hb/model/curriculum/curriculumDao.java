package com.hb.model.curriculum;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import com.hb.model.sturoom.SturoomDao;
import com.hb.util.DB;

public class curriculumDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public curriculumDao() {
		conn = DB.getConnection();
	}

	public ArrayList<curriculumDto> selectAll() {
		ArrayList<curriculumDto> list = new ArrayList<>();
		String sql = "SELECT CURNO, CURNAME, CURDATE, LAST_DAY(CURDATE) AS ENDDATE, CURSUPPLY FROM CURRICULUM ORDER BY CURNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				curriculumDto dto = new curriculumDto();
				dto.setCurNo(rs.getInt("curNo"));
				dto.setCurName(rs.getString("curName"));
				dto.setCurDate(rs.getDate("curDate"));
				dto.setCurDateEnd(rs.getDate("endDate"));
				dto.setCurSupply(rs.getInt("curSupply"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){rs.close();}
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}//selectAll end

	public ArrayList<String> selectOne2() {
		ArrayList<String> al = new ArrayList<String>();
		String sql = "SELECT CURNAME FROM CURRICULUM ORDER BY CURNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				al.add(rs.getString("curname"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){rs.close();}
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return al;
	}
	
	public curriculumDto selectOne(int curNo) {
		curriculumDto dto = new curriculumDto();
		String sql = "SELECT * FROM CURRICULUM WHERE CURNO="+curNo;
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
		}finally{
			try {
				if(rs!=null){rs.close();}
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}//selectOne(curNo) end
	
	public curriculumDto selectOne(String title) {
		curriculumDto dto = new curriculumDto();
		String sql = "SELECT * FROM CURRICULUM WHERE CURNAME='"+title+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setCurNo(rs.getInt("curNo"));
				dto.setCurName(rs.getString("curName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){rs.close();}
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}//selectOne(title) end

	public int editOne(int curNo, String curDate, String curLocation, int curSupply) {
		int result = 0;
		String sql = "UPDATE CURRICULUM SET CURDATE='"+curDate+"', CURLOCATION='"+curLocation+"', CURSUPPLY="+curSupply+" WHERE CURNO="+curNo;
		String sql2 = "UPDATE CURRICULUM SET CURNO=NULL WHERE CURNO="+curNo;
		String sql3 = "UPDATE CURRICULUM SET CURNO="+curNo+" WHERE ROOMNO=SUBSTR('"+curLocation+"',1,1)";
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
		String sql = "INSERT INTO CURRICULUM (CURNO,CURNAME,CURDATE,CURLOCATION,CURSUPPLY) VALUES (CUR_SEQ.NEXTVAL, '"+curName+"', '"+curDate+"', '"+curLocation+"', "+curSupply+")";
		String sql2 = "UPDATE STUROOM SET CURNO=(SELECT MAX(CURNO) FROM CURRICULUM ) WHERE ROOMNO=SUBSTR('"+curLocation+"',1,1)";
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
		String sql = "UPDATE STUROOM SET CURNO=NULL WHERE CURNO="+curNo;
		String sql2 = "DELETE FROM CURRICULUM WHERE CURNO="+curNo;
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