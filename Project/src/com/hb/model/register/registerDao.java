package com.hb.model.register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.DB;

public class registerDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public registerDao() {
		conn = DB.getConnection();
	}
	
	public ArrayList<registerDto> selectNull() {
		ArrayList<registerDto> list = new ArrayList<>();
		String sql = "SELECT MEMNO, NAME, TEL, EMAIL, FILE1, FILE2 FROM REGISTER WHERE FILE1 IS NULL AND FILE2 IS NULL";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				registerDto dto = new registerDto();
				dto.setMemNo(rs.getInt("memNo"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setFile1(rs.getString("file1"));
				dto.setFile2(rs.getString("file2"));
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
	}

	private int getMemNo(String name) {
		int memNo = 0;
		String sql = "SELECT MEMNO FROM MEMBER WHERE MEMNAME='"+name+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				memNo = rs.getInt("memNo");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memNo;
	}
	
	public int registerClass(String name, String email, String tel,String gubun, String job, String jobinfo, String time, String pay,String content, String password, String file1, String file2) {
		int result = 0;
		int memNo = getMemNo(name);
		String sql = "INSERT INTO REGISTER (REGNO, MEMNO, NAME, EMAIL, TEL, GUBUN, JOB, JOBINFO, TIME, PAY, CONTENT, PASSWORD, FILE1, FILE2) VALUES " +
					"(REG_SEQ.NEXTVAL, "+memNo+", '"+name+"', '"+email+"', '"+tel+"', '"+gubun+"', '"+job+"', '"+jobinfo+"', '"+time+"', '"+pay+"', '"+content+"', '"+password+"', '"+file1+"', '"+file2+"')";
		try {
			pstmt = conn.prepareStatement(sql);
			//System.out.println(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

//	private int getMemNo() {
//		int memNo = 0;
//		String sql = "select memNo from member where memId='"+id+"'";
//		try {
//			pstmt = conn.prepareStatement(sql);
//			rs = pstmt.executeQuery();
//			if(rs.next()){
//				memNo = rs.getInt("memNo");
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally{
//			try {
//				if(rs!=null){rs.close();}
//				if(pstmt!=null){pstmt.close();}
//				if(conn!=null){conn.close();}
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return memNo;
//	}
	
	public String getName(String id) {
	      String name="";
	      String sql = "SELECT MEMNAME FROM MEMBER WHERE MEMID='"+id+"'";
	      try {
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();
	         while (rs.next()) {
	            name = rs.getString("memname");
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            if (rs!=null) rs.close();
	            if (pstmt!=null) pstmt.close();
	            if (conn!=null) conn.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      }
	      return name;
	   }
	
	
	public int registerClass(int curNo, String name, String email, String tel,String gubun, String job, String jobinfo, String time, String pay,String content, String password, String file1, String file2) {
		int result = 0;
		String sql = "INSERT INTO REGISTER (REGNO, MEMNO, NAME, EMAIL, TEL, GUBUN, JOB, JOBINFO, TIME, PAY, CONTENT, PASSWORD, FILE1, FILE2, CURNO) VALUES " +
					"(REG_SEQ.NEXTVAL, (SELECT MEMNO FROM MEMBER WHERE MEMNAME='"+name+"'), '"+name+"', '"+email+"', '"+tel+"', '"+gubun+"', '"+job+"', '"+jobinfo+"', '"+time+"', '"+pay+"', '"+content+"', '"+password+"', '"+file1+"', '"+file2+"',"+curNo+")";
//		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}//registerClass end

	public ArrayList<registerDto> selectFinal() {
		ArrayList<registerDto> list = new ArrayList<>();
		String sql = "SELECT * FROM REGISTER WHERE FILE1 IS NOT NULL AND FILE2 IS NOT NULL";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				registerDto dto = new registerDto();
				dto.setMemNo(rs.getInt("memNo"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setFile1(rs.getString("file1"));
				dto.setFile2(rs.getString("file2"));
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
	}//selectFinal end

	public registerDto seletOne(int memNo) {
		registerDto dto = new registerDto();
		String sql = "SELECT * FROM REGISTER WHERE MEMNO="+memNo;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setCurNo(rs.getInt("curNo"));
				dto.setRegNo(rs.getInt("regNo"));
				dto.setMemNo(rs.getInt("memNo"));
				dto.setFile1(rs.getString("file1"));
				dto.setFile2(rs.getString("file2"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setTel(rs.getString("tel"));
				dto.setGubun(rs.getString("gubun"));
				dto.setJob(rs.getString("job"));
				dto.setJobinfo(rs.getString("jobinfo"));
				dto.setTime(rs.getString("time"));
				dto.setPay(rs.getString("pay"));
				dto.setContent(rs.getString("content"));
				dto.setPassword(rs.getString("password"));
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
	}//seletOne end

	public int deleteOne(int memNo) {
		int result = 0;
		String sql = "DELETE FROM REGISTER WHERE MEMNO="+memNo;
		String sql2 = "INSERT INTO GRADE (GRDNO, STUNO ) VALUES (GRD_SEQ.NEXTVAL, (SELECT STUNO FROM STUDENT WHERE MEMNO="+memNo+"))";
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
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}//deleteOne end
}