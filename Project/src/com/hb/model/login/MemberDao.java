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
}
