package com.hb.model.jobafter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.DB;

public class jobafterDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public jobafterDao() {
		conn = DB.getConnection();
	}

	public ArrayList<jobafterDto> selectAll() {
		ArrayList<jobafterDto> list = new ArrayList<>();
		String sql = "select * from jobafter";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				jobafterDto dto = new jobafterDto();
				dto.setJafNo(rs.getInt("jafNo"));
				dto.setJafTitle(rs.getString("jafTitle"));
				dto.setJafDate(rs.getDate("jafDate"));
				dto.setJafName(rs.getString("jafName"));
				dto.setJafContent(rs.getString("jafContent"));
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

	public jobafterDto count() {
		jobafterDto dto = new jobafterDto();
		String sql = "select count(*) as cnt from jobafter";
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
	
	public ArrayList<jobafterDto> selectAll(String keyword, int pStart, int pEnd) {
		ArrayList<jobafterDto> list = new ArrayList<>();
		String subsql = "select jafNo, jafTitle, jafContent, jafDate, jafName from jobafter "+keyword+" order by jafNo desc";
		String sql = "select * from (select rownum as rn, jafNo, jafTitle, jafContent, jafDate, jafName from ("+subsql+")) where rn between "+pStart+" and "+pEnd;
		//System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				jobafterDto dto = new jobafterDto();
				dto.setRn(rs.getInt("rn"));
				dto.setJafNo(rs.getInt("jafNo"));
				dto.setJafTitle(rs.getString("jafTitle"));
				dto.setJafContent(rs.getString("jafContent"));
				dto.setJafDate(rs.getDate("jafDate"));
				dto.setJafName(rs.getString("jafName"));
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

	public int addOne(String title, String name, String content) {
		int result = 0;
		String sql = "insert into jobafter (jafNo, jafTitle, jafDate, jafName, jafContent) values (jaf_seq.nextval,?,sysdate,?,?)";
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

	public jobafterDto selectOne(int jafNo) {
		jobafterDto dto = new jobafterDto();
		String sql = "select * from jobafter where jafNo="+jafNo;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setJafNo(rs.getInt("jafNo"));
				dto.setJafTitle(rs.getString("jafTitle"));
				dto.setJafDate(rs.getDate("jafDate"));
				dto.setJafName(rs.getString("jafName"));
				dto.setJafContent(rs.getString("jafContent"));
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

	public int updateOne(int jafNo, String jafTitle, String jafContent) {
		int result = 0;
		String sql = "update jobafter set jafDate=sysdate, jafTitle='"+jafTitle+"', jafContent='"+jafContent+"' where jafNo="+jafNo;
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

	public int deleteOne(int jafNo) {
		int result = 0;
		String sql = "delete from jobafter where jafNo="+jafNo;
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
}
