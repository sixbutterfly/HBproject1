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
	
	public StuDao() {
		conn = DB.getConnection();
	}

	public ArrayList selectRoomList() {
		ArrayList<StuDto> list = new ArrayList<StuDto>();
		String sql = "select stuNo, memname, curname, curlocation from student, member, studycur where student.memno = member.memno";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				StuDto bean = new StuDto();
				bean.setStuno(rs.getInt("stuno"));
				bean.setStuname(rs.getString("memname"));
				bean.setCurname(rs.getString("curname"));
				bean.setCurlocation(rs.getString("curlocation"));
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
	}
	
	
}
