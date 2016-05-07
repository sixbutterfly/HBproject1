package com.hb.model.job;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.DB;

public class jobDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public jobDao() {
		conn = DB.getConnection();
	}
	
	public ArrayList<jobDto> selectAll() {
		ArrayList<jobDto> list = new ArrayList<>();
		String sql = "select * from jobinfo";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				jobDto dto = new jobDto();
				dto.setJobNo(rs.getInt("jobNo"));
				dto.setJobTitle(rs.getString("jobTitle"));
				dto.setJobDate(rs.getDate("jobDate"));
				dto.setJobName(rs.getString("jobName"));
				dto.setJobContent(rs.getString("jobContent"));
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

	public jobDto count() {
		jobDto dto = new jobDto();
		String sql = "select count(*) as cnt from jobinfo";
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
	
	public ArrayList<jobDto> selectAll(String keyword, int pStart, int pEnd) {
		ArrayList<jobDto> list = new ArrayList<>();
		String subsql = "select jobNo, jobTitle, jobContent, jobDate, jobName from jobinfo "+keyword+" order by jobNo desc";
		String sql = "select * from (select rownum as rn, jobNo, jobTitle, jobContent, jobDate, jobName from ("+subsql+")) where rn between "+pStart+" and "+pEnd;
		//System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				jobDto dto = new jobDto();
				dto.setRn(rs.getInt("rn"));
				dto.setJobNo(rs.getInt("jobNo"));
				dto.setJobTitle(rs.getString("jobTitle"));
				dto.setJobContent(rs.getString("jobContent"));
				dto.setJobDate(rs.getDate("jobDate"));
				dto.setJobName(rs.getString("jobName"));
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
		String sql = "insert into jobinfo (jobNo, jobTitle, jobDate, jobName, jobContent) values (job_seq.nextval,?,sysdate,?,?)";
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

	public jobDto selectOne(int jobNo) {
		jobDto dto = new jobDto();
		String sql = "select * from jobinfo where jobNo="+jobNo;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setJobNo(rs.getInt("jobNo"));
				dto.setJobTitle(rs.getString("jobTitle"));
				dto.setJobDate(rs.getDate("jobDate"));
				dto.setJobName(rs.getString("jobName"));
				dto.setJobContent(rs.getString("jobContent"));
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

	public int updateOne(int jobNo, String jobTitle, String jobContent) {
		int result = 0;
		String sql = "update jobinfo set jobDate=sysdate, jobTitle='"+jobTitle+"', jobContent='"+jobContent+"' where jobNo="+jobNo;
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

	public int deleteOne(int jobNo) {
		int result = 0;
		String sql = "delete from jobinfo where jobNo="+jobNo;
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
