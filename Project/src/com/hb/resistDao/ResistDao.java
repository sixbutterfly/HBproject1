package com.hb.resistDao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ResistDao {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	Connection conn;
	PreparedStatement pstmt;
	
	public ResistDao() {
		
	}
	
	public void addOne() {
		
	}
}