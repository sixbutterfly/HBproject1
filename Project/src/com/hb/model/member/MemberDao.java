package com.hb.model.member;

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
	
	public MemberDao() {
		conn = DB.getConnection();
	}

	public boolean loginCk(String id, String pw) {
		String sql = "SELECT COUNT(*) AS CNT FROM MEMBER WHERE MEMID=? AND MEMPW=?";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result==1)return true;
		return false;
	}

	public int memjoin(MemberDto dto) throws SQLException {
		String sql = "INSERT INTO MEMBER (MEMNO, MEMPW, MEMID, MEMNAME, MEMADDRESS, MEMEMAIL, MEMPHONE, AUTHNO, MEMTEL, MEMGENDER, EMAILAGREE, JOINDAY) VALUES (MEM_SEQ.NEXTVAL,?,?,?,?,?,?,0,?,?,?,SYSDATE)";
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
			ex.printStackTrace();
		}finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
			return result;
	}

	public ArrayList<MemberDto> selectAll() throws SQLException {
		ArrayList<MemberDto> list = new ArrayList<>();
		String sql ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER ORDER BY AUTHNO ASC";
		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemberDto dto = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				list.add(dto);
			}
		}catch(Exception e){
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

	public MemberDto selectOne(int memno){
		MemberDto dto= null;
		String sql = "SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER WHERE MEMNO=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memno);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto= new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}
	
	public MemberDto selectOne2(String id){
		MemberDto dto= null;
		String sql = "SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY, MEMPW FROM MEMBER WHERE MEMID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto = new MemberDto(rs.getInt("MEMNO"), rs.getInt("AUTHNO"), rs.getString("MEMNAME"),rs.getString("MEMGENDER"),rs.getString("MEMPHONE"), rs.getString("MEMTEL"), rs.getString("MEMADDRESS"), rs.getString("MEMEMAIL"), rs.getString("EMAILAGREE"), rs.getString("JOINDAY"));
				dto.setPw(rs.getString("MEMPW"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}
	
	public int updateLevel(MemberDto dto) {
		int result = 0;
		String sql = "UPDATE MEMBER SET AUTHNO=? WHERE MEMNO=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getLevel());
			pstmt.setInt(2, dto.getMemno());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int updateInfo(int memno, String tel, String phone, String address, String email, String emailagree, String pw) {
		int result = 0;
		String sql = "UPDATE MEMBER SET MEMTEL=?, MEMPHONE=?, MEMADDRESS=?, MEMEMAIL=?, EMAILAGREE=?, MEMPW=? WHERE MEMNO=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tel);
			pstmt.setString(2, phone);
			pstmt.setString(3, address);
			pstmt.setString(4, email);
			pstmt.setString(5, emailagree);
			pstmt.setString(6, pw);
			pstmt.setInt(7, memno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}