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
		String sql = "select memNo, name, tel, email, file1, file2 from register where file1 is null or file2 is null";
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

	public int getMemno(String id) {
		int memNo = 0;
		String sql = "SELECT MEMNO FROM MEMBER WHERE MEMID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				memNo = rs.getInt("memNo");
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
		return memNo;
	}
	
	public String getCurname(int memno) {
		String sql="SELECT CURNAME FROM REGISTER, CURRICULUM WHERE REGISTER.CURNO=CURRICULUM.CURNO AND MEMNO=?";
		String curname="";
		try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, memno);
	         rs = pstmt.executeQuery();
	         while (rs.next()) {
	            curname = rs.getString("CURNAME");
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
		return curname;
	}
	
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
				"(REG_SEQ.NEXTVAL, (select memNo from member where memName='"+name+"'), '"+name+"', '"+email+"', '"+tel+"', '"+gubun+"', '"+job+"', '"+jobinfo+"', '"+time+"', '"+pay+"', '"+content+"', '"+password+"', '"+file1+"', '"+file2+"',"+curNo+")";
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
		String sql = "select * from register where file1 is not null and file2 is not null";
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
		String sql = "select * from register where memNo="+memNo;
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
		String sql = "delete from register where memNo="+memNo;
		String sql2 = "insert into grade (grdNo, stuNo ) values (grd_seq.nextval, (select stuNo from student where memNo="+memNo+"))";
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

	public int deleteRegister(String name) {
		int result = 0;
		String sql = "DELETE FROM REGISTER WHERE NAME=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
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
	}

	public boolean checkRegister(int memno) {
		boolean result=false;
		int regno=0;
		String sql = "SELECT REGNO FROM REGISTER WHERE MEMNO=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memno);
			rs = pstmt.executeQuery();
			while(rs.next()){
				regno = rs.getInt("regno");
			}
			if (regno!=0) {
				result=true;
			}
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
	}

	public int updateFile(String file1, String file2, int memno) {
		int result =0;
		String sql = "UPDATE REGISTER SET FILE1=?, FILE2=? WHERE MEMNO=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, file1);
			pstmt.setString(2, file2);
			pstmt.setInt(3, memno);
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
	}
}