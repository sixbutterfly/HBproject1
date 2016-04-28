package com.hb.model.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hb.util.DB;

public class MemberDao {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private ResultSet rs2;
	private ResultSet rs3;
	private ResultSet rs4;
	private ResultSet rs5;
	private ResultSet rs6;
	private ResultSet rs7;
	
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

	public int memjoin(MemberDto dto) throws SQLException {
		String sql = "INSERT INTO MEMBER VALUES (MEM_SEQ.NEXTVAL,?,?,?,?,?,?,0,?,?,?,SYSDATE)";
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
		}catch(Exception ex){}finally{
			rs.close();
			pstmt.close();
			conn.close();
		}
			return result;
	}

	public ArrayList<MemberDto> selectAll() throws SQLException {
		ArrayList<MemberDto> list = new ArrayList<>();
		String sql ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER";
		String sql2 ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER WHERE AUTHNO=0";
		String sql3 ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER WHERE AUTHNO=1";
		String sql4 ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER WHERE AUTHNO=2";
		String sql5 ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER WHERE AUTHNO=3";
		String sql6 ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER WHERE AUTHNO=4";
		String sql7 ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER WHERE AUTHNO=5";
		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemberDto dto = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				list.add(dto);
			}
			pstmt = conn.prepareStatement(sql2);
			rs2 = pstmt.executeQuery();
			while(rs2.next()){
				MemberDto dto2 = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				list.add(dto2);
			}
			pstmt = conn.prepareStatement(sql3);
			rs3 = pstmt.executeQuery();
			while(rs3.next()){
				MemberDto dto3 = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				list.add(dto3);
			}
			pstmt = conn.prepareStatement(sql4);
			rs4 = pstmt.executeQuery();
			while(rs4.next()){
				MemberDto dto4 = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				list.add(dto4);
			}
			pstmt = conn.prepareStatement(sql5);
			rs5 = pstmt.executeQuery();
			while(rs5.next()){
				MemberDto dto5 = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				list.add(dto5);
			}
			pstmt = conn.prepareStatement(sql6);
			rs6 = pstmt.executeQuery();
			while(rs6.next()){
				MemberDto dto6 = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				list.add(dto6);
			}
			pstmt = conn.prepareStatement(sql7);
			rs7 = pstmt.executeQuery();
			while(rs7.next()){
				MemberDto dto7 = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				list.add(dto7);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			rs.close();
			pstmt.close();
			conn.close();
		}
		return list;
	}
	
}
