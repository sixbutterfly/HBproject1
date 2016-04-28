package com.hb.model.register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.DB;

public class registerDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public registerDao() {
		conn = DB.getConnection();
	}
	
	public ArrayList<registerDto> selectNull() {
		ArrayList<registerDto> list = new ArrayList<>();
		String sql = "select memNo, name, tel, email, file1, file2 from register where file1 is null and file2 is null";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				registerDto dto = new registerDto();
				dto.setMemNo(rs.getInt("memNo"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setFile1(rs.getString("file1"));
				dto.setFile2(rs.getString("file2"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	private int getMemNo(String name) {
		int memNo = 0;
		String sql = "select memNo from member where memName='"+name+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				memNo = rs.getInt("memNo");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memNo;
	}
	
	public int registerClass(String name, String email, String tel,String gubun, String job, String jobinfo, String time, String pay,String content, String password, String file1, String file2) {
		int result = 0;
		int memNo = getMemNo(name);
		String sql = "INSERT INTO REGISTER (REGNO, MEMNO, NAME, EMAIL, TEL, GUBUN, JOB, JOBINFO, TIME, PAY, CONTENT, PASSWORD, FILE1, FILE2) VALUES " +
					"(REG_SEQ.NEXTVAL, "+memNo+", '"+name+"', '"+email+"', '"+tel+"', '"+gubun+"', '"+job+"', '"+jobinfo+"', '"+time+"', '"+pay+"', '"+content+"', '"+password+"', '"+file1+"', '"+file2+"')";
		try {
			pstmt = conn.prepareStatement(sql);
			//System.out.println(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
