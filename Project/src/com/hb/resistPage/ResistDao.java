package com.hb.resistPage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ResistDao {
	PreparedStatement pstmt;
	Connection conn;
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	String sql="";
	int result=0;
	
	public ResistDao() {
	}
	
	public void addOne() {
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			sql="insert into resist () values ()";
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}