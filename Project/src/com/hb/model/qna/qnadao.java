package com.hb.model.qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.model.notice.noticeDto;
import com.hb.util.DB;

public class qnadao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public qnadao() {
		conn = DB.getConnection();
	}

	public ArrayList<qnadto> selectAll() {
		ArrayList<qnadto> list = new ArrayList<>();
		String sql = "select * from qna";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				qnadto dto = new qnadto();
				dto.setQnaNo(rs.getInt("qnaNo"));
				dto.setQnaTitle(rs.getString("qnaTitle"));
				dto.setQnaDate(rs.getDate("qnaDate"));
				dto.setQnaName(rs.getString("qnaName"));
				dto.setQnaContent(rs.getString("qnaContent"));
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

	public qnadto count() {
		qnadto dto = new qnadto();
		String sql = "select count(*) as cnt from qna";
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
	
	public ArrayList<qnadto> selectAll(String keyword, int pStart, int pEnd) {
		ArrayList<qnadto> list = new ArrayList<>();
		String subsql = "select qnaNo, qnaTitle, qnaContent, qnaDate, qnaName from qna "+keyword+" order by qnaNo desc";
		String sql = "select * from (select rownum as rn, qnaNo, qnaTitle, qnaContent, qnaDate, qnaName from ("+subsql+")) where rn between "+pStart+" and "+pEnd;
//		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				qnadto dto = new qnadto();
				dto.setRn(rs.getInt("rn"));
				dto.setQnaNo(rs.getInt("qnaNo"));
				dto.setQnaTitle(rs.getString("qnaTitle"));
				dto.setQnaContent(rs.getString("qnaContent"));
				dto.setQnaDate(rs.getDate("qnaDate"));
				dto.setQnaName(rs.getString("qnaName"));
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
		String sql = "insert into qna (qnaNo, qnaTitle, qnaDate, qnaName, qnaContent) values (qna_seq.nextval,?,sysdate,?,?)";
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

	public qnadto selectOne(int qnaNo) {
		qnadto dto = new qnadto();
		String sql = "select * from qna where qnaNo="+qnaNo;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setQnaNo(rs.getInt("qnaNo"));
				dto.setQnaTitle(rs.getString("qnaTitle"));
				dto.setQnaDate(rs.getDate("qnaDate"));
				dto.setQnaName(rs.getString("qnaName"));
				dto.setQnaContent(rs.getString("qnaContent"));
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

	public int updateOne(int qnaNo, String qnaTitle, String qnaContent) {
		int result = 0;
		String sql = "update qna set qnaDate=sysdate, qnaTitle='"+qnaTitle+"', qnaContent='"+qnaContent+"' where qnaNo="+qnaNo;
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

	public int deleteOne(int qnaNo) {
		int result = 0;
		String sql = "delete from qna where qnaNo="+qnaNo;
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
