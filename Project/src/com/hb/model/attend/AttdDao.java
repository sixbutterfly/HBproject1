package com.hb.model.attend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.model.teacher.TeacherDto;
import com.hb.util.DB;

public class AttdDao {		
		private Connection conn;
		private Statement stmt;
		private PreparedStatement pstmt;
		private ResultSet rs;
		String sql;
		
		public AttdDao() {
			conn = DB.getConnection();
		}
		
		public ArrayList<AttdDto> attdSelect() {
			ArrayList<AttdDto> list = new ArrayList<AttdDto>();
			sql = "select * from attend";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					AttdDto bean = new AttdDto();
					bean.setAttdNo(rs.getInt("attdNo"));
					bean.setStuNo(rs.getInt("stuNo"));
					bean.setAttdValue(rs.getString("attdValue"));
					bean.setAttdDate(rs.getDate("attdDate"));
					list.add(bean);
				}
			} catch (SQLException e) {
				e.printStackTrace();
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
			return list;	
		}		
}
