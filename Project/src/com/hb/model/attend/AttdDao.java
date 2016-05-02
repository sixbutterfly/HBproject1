package com.hb.model.attend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.model.curriculum.curriculumDto;
import com.hb.model.room.RoomDto;
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
		
		//³¯Â¥
		
		//°­»çÀÌ¸§
		public String selectTchName(String memberId) {
			String teacherName = "";			
			String sql = "select tchName from member, teacher where member.memno = teacher.memno and memid='" +memberId + "'";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					teacherName = rs.getString("tchName");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
					System.out.println("»Ñ??");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}			
			return teacherName;
		}

		public int selectRoomNo(String memberId) {
			int roomNumber = 0;			
			String sql = "select r.roomNo from stuRoom r, teacher t where" +
					"r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='" +memberId + "')";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					roomNumber = rs.getInt("roomNo");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
					System.out.println("»Ñ??");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}			
			return roomNumber;
		}

		public ArrayList selectAttd() {
			ArrayList<curriculumDto> list = new ArrayList<>();
			String sql = "SELECT CURNO, CURNAME, CURDATE, LAST_DAY(CURDATE) AS ENDDATE, CURSUPPLY FROM CURRICULUM ORDER BY CURNO";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					curriculumDto dto = new curriculumDto();
					dto.setCurNo(rs.getInt("curNo"));
					dto.setCurName(rs.getString("curName"));
					dto.setCurDate(rs.getDate("curDate"));
					dto.setCurDateEnd(rs.getDate("endDate"));
					dto.setCurSupply(rs.getInt("curSupply"));
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		
		
}
