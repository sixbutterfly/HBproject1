package com.hb.model.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.util.DB;

public class StuDao {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	String sql;
	
	public StuDao() {
		conn = DB.getConnection();
	}

	public ArrayList selectAll() {
		ArrayList<StuDto> list = new ArrayList<StuDto>();
		sql = "SELECT STUDENT.STUNO, STUDENT.ROOMNO, MEMBER.MEMNAME FROM STUDENT, MEMBER WHERE STUDENT.MEMNO = MEMBER.MEMNO order by STUDENT.STUNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				StuDto bean = new StuDto();
				bean.setStuno(rs.getInt("STUNO"));
				bean.setStuname(rs.getString("MEMNAME"));
				bean.setRoomno(rs.getString("ROOMNO"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}//selectAll end
	
	public ArrayList<StuDto> selectWaitingList() {
		ArrayList<StuDto> list = new ArrayList(); 
		sql = "select stuno, memname, roomno from student, member where student.memno = member.memno and roomno is null order by STUDENT.STUNO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				StuDto bean = new StuDto();
				bean.setStuno(rs.getInt("stuno"));
				bean.setStuname(rs.getString("memname"));
				bean.setRoomno(rs.getString("roomno"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}//selectWaitingList end

	public int updateRoomno(String[] stulist, String roomno) {
		int result = 0;
		String sqlAttd = null;
		PreparedStatement pstmtAttd = null;
		sql = "UPDATE STUDENT SET ROOMNO = ? WHERE STUNO = ?";
		sqlAttd = "INSERT INTO ATTEND (ATTDNO, STUNO) VALUES (ATTD_SEQ.NEXTVAL, ?)";
		try {
			pstmt = conn.prepareStatement(sql);			
			for (int i = 0; i < stulist.length; i++) {
				pstmt.setString(1, roomno);
				pstmt.setString(2, stulist[i]);
				result = pstmt.executeUpdate();
			}
			pstmtAttd = conn.prepareStatement(sqlAttd);
			for (int i = 0; i < stulist.length; i++) {
				pstmtAttd.setString(1, stulist[i]);
				pstmtAttd.executeUpdate();
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(pstmtAttd!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int delRoomno(String[] stulist, String roomno) {
		int result = 0;
		String sqlAttd = null;
		PreparedStatement pstmtAttd = null;
		sql = "update student set roomno = null where stuno = ?";
		sqlAttd = "delete from attend where stuno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < stulist.length; i++) {
				pstmt.setString(1, stulist[i]);
				result = pstmt.executeUpdate();
			}
			pstmtAttd = conn.prepareStatement(sqlAttd);
			for (int i = 0; i < stulist.length; i++) {
				pstmtAttd.setString(1, stulist[i]);
				pstmtAttd.executeUpdate();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(pstmtAttd!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		
		return result;
	}
	public int addOne(int memNo) {
		int result = 0;
		sql = "insert into student (stuNo, memNo, roomNo) values (stu_seq.nextval, "+memNo+", null)";
		//System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}//addOne end

	public int addRoom(String newroomno) {
		int result = 0;
		sql = "insert into sturoom (roomno, tchno, curno) values (?, null, null)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,newroomno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String selectGrade(String id) {
		String result="";
		sql = "SELECT MEMBER.MEMNO, MEMNAME, STUDENT.ROOMNO, NVL(JAVAGRADE, 0) AS JAVAGRADE, NVL(WEBGRADE, 0) AS WEBGRADE, NVL(FRAMEGRADE, 0) AS FRAMEGRADE FROM MEMBER, GRADE, STUDENT WHERE GRADE.STUNO=STUDENT.STUNO AND MEMBER.MEMNO=STUDENT.MEMNO AND MEMID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				result += rs.getInt("memno");
				result += " "+rs.getString("memname");
				result += " "+rs.getInt("roomno");
				result += " "+rs.getInt("javagrade");
				result += " "+rs.getInt("webgrade");
				result += " "+rs.getInt("framegrade");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
}//class end