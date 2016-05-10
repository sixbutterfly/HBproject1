package com.hb.model.attend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.model.sturoom.SturoomDto;
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
		//���ǽ� �����Ǿ� ������, �α����� ����
		public String selectTchName(String memberId) {
			String tchName = "";	
			String sql = "select m.memName from member m, teacher t where m.memNo = t.memNo and t.tchNo in (select r.tchNo from teacher t, stuRoom r where t.tchNo = r.tchNo) and memid='" +memberId + "'";
			
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					tchName = rs.getString("memName");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}/*finally {
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
			}			*/
			return tchName;
		}
		
		//������ : ���� ����
				public ArrayList<TeacherDto> selectTchOne() {
					ArrayList<TeacherDto> tchList = new ArrayList<TeacherDto>();
					String sql = "select m.memName from member m, teacher t where m.memNo = t.memNo and t.tchNo in (select r.tchNo from teacher t, stuRoom r where t.tchNo = r.tchNo)";
					
					try {
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while(rs.next()){
							TeacherDto dto = new TeacherDto();
							dto.setTchname(rs.getString("memName"));
							tchList.add(dto);
							System.out.println(dto);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}/*finally {
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
					}			*/
					return tchList;
				}

		public int selectRoomNo(String memberId) {
			int roomNumber = 0;			
			String sql = "select r.roomNo from stuRoom r, teacher t where r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='"+memberId+"')";;
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					roomNumber = rs.getInt("roomNo");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}/*finally {
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
			}			*/
			return roomNumber;
		}
		
		
		//������ : ���ǽ� ����
		public ArrayList<SturoomDto> selectRoomList() {
			ArrayList<SturoomDto> roomList = new ArrayList<SturoomDto>();
			String sql = "select roomNo from stuRoom";
			
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					SturoomDto dto = new SturoomDto();
					dto.setRoomNo(rs.getInt("roomNo"));
					roomList.add(dto);
					System.out.println(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}/*finally {
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
			}			*/
			return roomList;
		}
		
		// ���� : ������
		public ArrayList<AttdDto> selectAttdList(String memberId) {
			ArrayList<AttdDto> list = new ArrayList<AttdDto>();
			String sql = "select rowNum, attdNo, memName, nvl(attdvalue1,'-'), nvl(attdvalue2,'-'), nvl(attdvalue3,'-'), nvl(attdvalue4,'-'), nvl(attdvalue5,'-'), nvl(attdvalue6,'-'), nvl(attdvalue7,'-'), nvl(attdvalue8,'-'), nvl(attdvalue9,'-'), nvl(attdvalue10,'-')," 
							+ " nvl(attdvalue11,'-'), nvl(attdvalue12,'-'), nvl(attdvalue13,'-'), nvl(attdvalue14,'-'), nvl(attdvalue15,'-'), nvl(attdvalue16,'-'), nvl(attdvalue17,'-'), nvl(attdvalue18,'-'), nvl(attdvalue19,'-'), nvl(attdvalue20,'-'), nvl(attdvalue21,'-'), nvl(attdvalue22,'-')," 
							+ " nvl(attdvalue23,'-'), nvl(attdvalue24,'-'), nvl(attdvalue25,'-'), nvl(attdvalue26,'-'), nvl(attdvalue27,'-'), nvl(attdvalue28,'-'), nvl(attdvalue29,'-'), nvl(attdvalue30,'-'), nvl(attdvalue31,'-')" 
							+ " from attend a," 
							+ " (" 
						    + " select memName, stuNo from member m, student s where m.memNo = s.memNo" 
						    + " and s.roomNo = (select r.roomNo from stuRoom r where " 
						    + "	 r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='" +memberId  + "'))" 
						    + "	 ) s " 
						    + " where a.stuNo = s.stuNo";		
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					AttdDto dto = new AttdDto();
					dto.setRowNum(rs.getInt("rowNum"));
					dto.setAttdNo(rs.getInt("attdNo"));
					dto.setMemName(rs.getString("memName"));
					dto.setAttdValue1(rs.getString("nvl(attdvalue1,'-')"));					
					dto.setAttdValue2(rs.getString("nvl(attdvalue2,'-')"));					
					dto.setAttdValue3(rs.getString("nvl(attdvalue3,'-')"));					
					dto.setAttdValue4(rs.getString("nvl(attdvalue4,'-')"));					
					dto.setAttdValue5(rs.getString("nvl(attdvalue5,'-')"));					
					dto.setAttdValue6(rs.getString("nvl(attdvalue6,'-')"));					
					dto.setAttdValue7(rs.getString("nvl(attdvalue7,'-')"));					
					dto.setAttdValue8(rs.getString("nvl(attdvalue8,'-')"));					
					dto.setAttdValue9(rs.getString("nvl(attdvalue9,'-')"));					
					dto.setAttdValue10(rs.getString("nvl(attdvalue10,'-')"));					
					dto.setAttdValue11(rs.getString("nvl(attdvalue11,'-')"));					
					dto.setAttdValue12(rs.getString("nvl(attdvalue12,'-')"));					
					dto.setAttdValue13(rs.getString("nvl(attdvalue13,'-')"));					
					dto.setAttdValue14(rs.getString("nvl(attdvalue14,'-')"));					
					dto.setAttdValue15(rs.getString("nvl(attdvalue15,'-')"));					
					dto.setAttdValue16(rs.getString("nvl(attdvalue16,'-')"));					
					dto.setAttdValue17(rs.getString("nvl(attdvalue17,'-')"));					
					dto.setAttdValue18(rs.getString("nvl(attdvalue18,'-')"));					
					dto.setAttdValue19(rs.getString("nvl(attdvalue19,'-')"));					
					dto.setAttdValue20(rs.getString("nvl(attdvalue20,'-')"));					
					dto.setAttdValue21(rs.getString("nvl(attdvalue21,'-')"));					
					dto.setAttdValue22(rs.getString("nvl(attdvalue22,'-')"));					
					dto.setAttdValue23(rs.getString("nvl(attdvalue23,'-')"));					
					dto.setAttdValue24(rs.getString("nvl(attdvalue24,'-')"));					
					dto.setAttdValue25(rs.getString("nvl(attdvalue25,'-')"));					
					dto.setAttdValue26(rs.getString("nvl(attdvalue26,'-')"));					
					dto.setAttdValue27(rs.getString("nvl(attdvalue27,'-')"));					
					dto.setAttdValue28(rs.getString("nvl(attdvalue28,'-')"));					
					dto.setAttdValue29(rs.getString("nvl(attdvalue29,'-')"));					
					dto.setAttdValue30(rs.getString("nvl(attdvalue30,'-')"));					
					dto.setAttdValue31(rs.getString("nvl(attdvalue31,'-')"));					
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}/*finally {
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
			}			*/
			return list;
		}
		
		/*// ������ : ������
				public ArrayList<AttdDto> selectAttdmList() {
					ArrayList<AttdDto> list = new ArrayList<AttdDto>();
					String sql = "select rowNum, attdNo, memName, nvl(attdvalue1,'-'), nvl(attdvalue2,'-'), nvl(attdvalue3,'-'), nvl(attdvalue4,'-'), nvl(attdvalue5,'-'), nvl(attdvalue6,'-'), nvl(attdvalue7,'-'), nvl(attdvalue8,'-'), nvl(attdvalue9,'-'), nvl(attdvalue10,'-')," 
									+ " nvl(attdvalue11,'-'), nvl(attdvalue12,'-'), nvl(attdvalue13,'-'), nvl(attdvalue14,'-'), nvl(attdvalue15,'-'), nvl(attdvalue16,'-'), nvl(attdvalue17,'-'), nvl(attdvalue18,'-'), nvl(attdvalue19,'-'), nvl(attdvalue20,'-'), nvl(attdvalue21,'-'), nvl(attdvalue22,'-')," 
									+ " nvl(attdvalue23,'-'), nvl(attdvalue24,'-'), nvl(attdvalue25,'-'), nvl(attdvalue26,'-'), nvl(attdvalue27,'-'), nvl(attdvalue28,'-'), nvl(attdvalue29,'-'), nvl(attdvalue30,'-'), nvl(attdvalue31,'-')" 
									+ " from attend a," 
									+ " (" 
								    + " select memName, stuNo from member m, student s where m.memNo = s.memNo" 
								    + " and s.roomNo = (select r.roomNo from stuRoom r where " 
								    + "	 r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='" "'))" 
								    + "	 ) s " 
								    + " where a.stuNo = s.stuNo";		
					try {
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while(rs.next()){
							AttdDto dto = new AttdDto();
							dto.setRowNum(rs.getInt("rowNum"));
							dto.setAttdNo(rs.getInt("attdNo"));
							dto.setMemName(rs.getString("memName"));
							dto.setAttdValue1(rs.getString("nvl(attdvalue1,'-')"));					
							dto.setAttdValue2(rs.getString("nvl(attdvalue2,'-')"));					
							dto.setAttdValue3(rs.getString("nvl(attdvalue3,'-')"));					
							dto.setAttdValue4(rs.getString("nvl(attdvalue4,'-')"));					
							dto.setAttdValue5(rs.getString("nvl(attdvalue5,'-')"));					
							dto.setAttdValue6(rs.getString("nvl(attdvalue6,'-')"));					
							dto.setAttdValue7(rs.getString("nvl(attdvalue7,'-')"));					
							dto.setAttdValue8(rs.getString("nvl(attdvalue8,'-')"));					
							dto.setAttdValue9(rs.getString("nvl(attdvalue9,'-')"));					
							dto.setAttdValue10(rs.getString("nvl(attdvalue10,'-')"));					
							dto.setAttdValue11(rs.getString("nvl(attdvalue11,'-')"));					
							dto.setAttdValue12(rs.getString("nvl(attdvalue12,'-')"));					
							dto.setAttdValue13(rs.getString("nvl(attdvalue13,'-')"));					
							dto.setAttdValue14(rs.getString("nvl(attdvalue14,'-')"));					
							dto.setAttdValue15(rs.getString("nvl(attdvalue15,'-')"));					
							dto.setAttdValue16(rs.getString("nvl(attdvalue16,'-')"));					
							dto.setAttdValue17(rs.getString("nvl(attdvalue17,'-')"));					
							dto.setAttdValue18(rs.getString("nvl(attdvalue18,'-')"));					
							dto.setAttdValue19(rs.getString("nvl(attdvalue19,'-')"));					
							dto.setAttdValue20(rs.getString("nvl(attdvalue20,'-')"));					
							dto.setAttdValue21(rs.getString("nvl(attdvalue21,'-')"));					
							dto.setAttdValue22(rs.getString("nvl(attdvalue22,'-')"));					
							dto.setAttdValue23(rs.getString("nvl(attdvalue23,'-')"));					
							dto.setAttdValue24(rs.getString("nvl(attdvalue24,'-')"));					
							dto.setAttdValue25(rs.getString("nvl(attdvalue25,'-')"));					
							dto.setAttdValue26(rs.getString("nvl(attdvalue26,'-')"));					
							dto.setAttdValue27(rs.getString("nvl(attdvalue27,'-')"));					
							dto.setAttdValue28(rs.getString("nvl(attdvalue28,'-')"));					
							dto.setAttdValue29(rs.getString("nvl(attdvalue29,'-')"));					
							dto.setAttdValue30(rs.getString("nvl(attdvalue30,'-')"));					
							dto.setAttdValue31(rs.getString("nvl(attdvalue31,'-')"));					
							list.add(dto);
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}finally {
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
				}*/
		

		public int updateAttdValue(int day, String attdStatus, Integer[] attdNo) {
			String sql = "update attend set attdValue"+ day + " = '" + attdStatus + "' where attdNo = ?";
			int result = 0;
			try {
				pstmt = conn.prepareStatement(sql);
				for (int i = 0; i < attdNo.length; i++) {
					pstmt.setInt(1, attdNo[i].intValue());
					result = pstmt.executeUpdate();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} /*finally {
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}		*/				
			return result;
		}
	
		public String selectStuOne(String memberId) {
			String stuName = "";
			String sql = "select memName"
							+ " from attend a," 
							+ " (" 
						    + " select memName, stuNo from member m, student s where m.memNo = s.memNo and m.memid='" +memberId  + "'" 
						    + "	 ) s " 
						    + " where a.stuNo = s.stuNo";
			
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					stuName = rs.getString("memName");				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}/*finally {
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
			}			*/
			return stuName;
		}
		
		//�α����� �л� �̸�
				public String selectStuName(String memberId) {
					String stuName = "";	
					String sql = "select memName, stuNo from member m, student s where m.memNo = s.memNo and memid='" +memberId + "'";
					
					try {
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						if(rs.next()){
							stuName = rs.getString("memName");
						}
					} catch (Exception e) {
						e.printStackTrace();
					}/*finally {
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
					}			*/
					return stuName;
				}

				public int selectStuRoomNo(String memberId) {
					int roomNo = 0;			
					String sql = "select r.roomNo from stuRoom r, student s where s.roomNo = (select s.roomNo from member m, student s where m.memno = s.memno and m.memid='"+memberId+"')";;
					try {
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						if(rs.next()){
							roomNo = rs.getInt("roomNo");
						}
					} catch (Exception e) {
						e.printStackTrace();
					}/*finally {
						try {
							if (rs != null)
								rs.close();
							if (pstmt != null)
								pstmt.close();
							if (conn != null)
								conn.close();
							System.out.println("��??");
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}			*/
					return roomNo;
				}
			
		public ArrayList<AttdDto> selectStuAttd(String memberId) {
			ArrayList<AttdDto> list = new ArrayList<AttdDto>();
			String sql = "select nvl(attdvalue1,'-'), nvl(attdvalue2,'-'), nvl(attdvalue3,'-'), nvl(attdvalue4,'-'), nvl(attdvalue5,'-'), nvl(attdvalue6,'-'), nvl(attdvalue7,'-'), nvl(attdvalue8,'-'), nvl(attdvalue9,'-'), nvl(attdvalue10,'-')," 
							+ " nvl(attdvalue11,'-'), nvl(attdvalue12,'-'), nvl(attdvalue13,'-'), nvl(attdvalue14,'-'), nvl(attdvalue15,'-'), nvl(attdvalue16,'-'), nvl(attdvalue17,'-'), nvl(attdvalue18,'-'), nvl(attdvalue19,'-'), nvl(attdvalue20,'-'), nvl(attdvalue21,'-'), nvl(attdvalue22,'-')," 
							+ " nvl(attdvalue23,'-'), nvl(attdvalue24,'-'), nvl(attdvalue25,'-'), nvl(attdvalue26,'-'), nvl(attdvalue27,'-'), nvl(attdvalue28,'-'), nvl(attdvalue29,'-'), nvl(attdvalue30,'-'), nvl(attdvalue31,'-')" 
							+ " from attend a,"
							+ " (" 
						    + " select stuNo from member m, student s where m.memNo = s.memNo and m.memid='" +memberId  + "'" 
						    + "	 ) s " 
						    + " where a.stuNo = s.stuNo";		
			
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					AttdDto dto = new AttdDto();
					dto.setAttdValue1(rs.getString("nvl(attdvalue1,'-')"));					
					dto.setAttdValue2(rs.getString("nvl(attdvalue2,'-')"));					
					dto.setAttdValue3(rs.getString("nvl(attdvalue3,'-')"));					
					dto.setAttdValue4(rs.getString("nvl(attdvalue4,'-')"));					
					dto.setAttdValue5(rs.getString("nvl(attdvalue5,'-')"));					
					dto.setAttdValue6(rs.getString("nvl(attdvalue6,'-')"));					
					dto.setAttdValue7(rs.getString("nvl(attdvalue7,'-')"));					
					dto.setAttdValue8(rs.getString("nvl(attdvalue8,'-')"));					
					dto.setAttdValue9(rs.getString("nvl(attdvalue9,'-')"));					
					dto.setAttdValue10(rs.getString("nvl(attdvalue10,'-')"));					
					dto.setAttdValue11(rs.getString("nvl(attdvalue11,'-')"));					
					dto.setAttdValue12(rs.getString("nvl(attdvalue12,'-')"));					
					dto.setAttdValue13(rs.getString("nvl(attdvalue13,'-')"));					
					dto.setAttdValue14(rs.getString("nvl(attdvalue14,'-')"));					
					dto.setAttdValue15(rs.getString("nvl(attdvalue15,'-')"));					
					dto.setAttdValue16(rs.getString("nvl(attdvalue16,'-')"));					
					dto.setAttdValue17(rs.getString("nvl(attdvalue17,'-')"));					
					dto.setAttdValue18(rs.getString("nvl(attdvalue18,'-')"));					
					dto.setAttdValue19(rs.getString("nvl(attdvalue19,'-')"));					
					dto.setAttdValue20(rs.getString("nvl(attdvalue20,'-')"));					
					dto.setAttdValue21(rs.getString("nvl(attdvalue21,'-')"));					
					dto.setAttdValue22(rs.getString("nvl(attdvalue22,'-')"));					
					dto.setAttdValue23(rs.getString("nvl(attdvalue23,'-')"));					
					dto.setAttdValue24(rs.getString("nvl(attdvalue24,'-')"));					
					dto.setAttdValue25(rs.getString("nvl(attdvalue25,'-')"));					
					dto.setAttdValue26(rs.getString("nvl(attdvalue26,'-')"));					
					dto.setAttdValue27(rs.getString("nvl(attdvalue27,'-')"));					
					dto.setAttdValue28(rs.getString("nvl(attdvalue28,'-')"));					
					dto.setAttdValue29(rs.getString("nvl(attdvalue29,'-')"));					
					dto.setAttdValue30(rs.getString("nvl(attdvalue30,'-')"));					
					dto.setAttdValue31(rs.getString("nvl(attdvalue31,'-')"));					
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} /*finally {
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
			}		*/	
			return list;
		}
}
