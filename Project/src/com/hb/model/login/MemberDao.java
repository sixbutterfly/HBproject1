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
	
	public boolean loginCk(String id, String pw) {
		System.out.println("login id:"+id+",pw:"+pw);
		String sql = "select count(*) as cnt from member where memid=? and mempw=?";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = rs.getInt("cnt");
				System.out.println("result cnt:"+result);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result==1)return true;
		return false;
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
		}catch(Exception ex){}
			return result;
	}
}
