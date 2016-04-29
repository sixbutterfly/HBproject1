package com.hb.model.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hb.util.DB;

public class MemberDao {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MemberDao() {
		conn = DB.getConnection();
	}

	public int loginCk(String id, String pw) {
		System.out.println("login id:"+id+",pw:"+pw);
		String sql = "select m.authNo as authNo from member m, authority a where m.authNo = a.authNo and memId = ? and memPw=?";
		int authNo = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()){
				authNo = rs.getInt("authNo");
				System.out.println("authNo:"+authNo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return authNo;	
	}

	public int memjoin(MemberDto dto) {
		String sql = "insert into member values (mem_seq.nextval,?,?,?,?,?,?,0,?,?,?)";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getPostnum()+", "+dto.getAddrresult1()+" "+dto.getAddrresult2());
			pstmt.setString(5, dto.getEmail()+"@"+dto.getEmail2());
			pstmt.setString(6, dto.getPhone()+"-"+dto.getPhone2()+"-"+dto.getPhone3());
			pstmt.setString(7, dto.getTel()+"-"+dto.getTel2()+"-"+dto.getTel3());
			pstmt.setString(8, dto.getGender());
			pstmt.setString(9, dto.getEmailagree());
			result = pstmt.executeUpdate();
		}catch(Exception ex){
			
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
			return result;
	}
//	public MemberDto overlab(String id){
//		System.out.println(id);
//		String sql2="select memid from member where memid=?";
//		try{
//			pstmt = conn.prepareStatement(sql2);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			boolean result = false;
//			while(rs.next()){
//				result = true;
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		return overlab(id);
//	}
}
