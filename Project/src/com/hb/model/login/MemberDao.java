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
	
	public MemberDao() {
		conn = DB.getConnection();
	}

	public int loginCk(String id, String pw) {
		System.out.println("login id:"+id+",pw:"+pw);
		String sql = "select m.authNo as authNo from member m, authority a where m.memId = ? and m.memPw=? and m.authNo = a.authNo";
		int authNo = -1;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()){
				authNo = rs.getInt("authNo");
				System.out.println("authNo:"+authNo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return authNo;	
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
		String sql ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER";
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
	
	public int updateLevel(MemberDto dto) {
		int result = 0;
		String sql = "update member set authno=? where memno=?";
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
	
}
