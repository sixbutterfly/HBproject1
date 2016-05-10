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

   public int loginCk(String id, String pw) {
      String sql = "select m.authNo as authNo from member m, authority a where m.memId = ? and m.memPw=? and m.authNo = a.authNo";
      int authNo = -1;
      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, id);
         pstmt.setString(2, pw);
         rs = pstmt.executeQuery();
         if(rs.next()){
            authNo = rs.getInt("authNo");
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return authNo;   
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
      String sql ="SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY FROM MEMBER ORDER BY MEMNO ASC";
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
   
   public int updateLevel(MemberDto dto) {
      int result = 0;
      String sql = "UPDATE MEMBER SET AUTHNO=? WHERE MEMNO=?";
      String sql2 = "INSERT INTO STUDENT (STUNO,MEMNO,ROOMNO) VALUES (STU_SEQ.NEXTVAL, ?, NULL)";
      String sql3 = "INSERT INTO TEACHER (TCHNO,MEMNO,ROOMNO) VALUES (TCH_SEQ.NEXTVAL, ?, NULL)";
      String sql4 = "INSERT INTO SALES (SALESNO,MEMNO) VALUES (SAL_SEQ.NEXTVAL, ?)";
      String sql5 = "INSERT INTO MANAGEMENT (MNGNO,MEMNO) VALUES (MNG_SEQ.NEXTVAL, ?)";
      
      String sql7 = "DELETE FROM MANAGEMENT WHERE MEMNO=?";
      String sql8 = "DELETE FROM SALES WHERE MEMNO=?";
      String sql9 = "DELETE FROM TEACHER WHERE MEMNO=?";
      String sql10 = "DELETE FROM STUDENT WHERE MEMNO=?";
      if(dto.getLevel()==4){
         try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getLevel());
            pstmt.setInt(2, dto.getMemno());
            result = pstmt.executeUpdate();
            
            pstmt = conn.prepareStatement(sql2);
            pstmt.setInt(1, dto.getMemno());
            result = pstmt.executeUpdate();
            System.out.println(dto.getAuthno());
            if(dto.getAuthno()==1){
               pstmt = conn.prepareStatement(sql7);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==2){
               pstmt = conn.prepareStatement(sql8);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==3){
               pstmt = conn.prepareStatement(sql9);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==4){
               pstmt = conn.prepareStatement(sql10);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }
         }catch(Exception e){
            e.printStackTrace();
         }finally{
            try {
               if(pstmt!=null)pstmt.close();
               if(conn!=null)conn.close();
            } catch (SQLException e) {
               e.printStackTrace();
            }
         }
      }else if(dto.getLevel()==3){
         try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getLevel());
            pstmt.setInt(2, dto.getMemno());
            result = pstmt.executeUpdate();
            
            pstmt = conn.prepareStatement(sql3);
            pstmt.setInt(1, dto.getMemno());
            result = pstmt.executeUpdate();
            
            if(dto.getAuthno()==1){
               pstmt = conn.prepareStatement(sql7);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==2){
               pstmt = conn.prepareStatement(sql8);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==3){
               pstmt = conn.prepareStatement(sql9);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==4){
               pstmt = conn.prepareStatement(sql10);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }
         }catch(Exception e){
            e.printStackTrace();
         }finally{
            try {
               if(pstmt!=null)pstmt.close();
               if(conn!=null)conn.close();
            } catch (SQLException e) {
               e.printStackTrace();
            }
         }
      }else if(dto.getLevel()==2){
         try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getLevel());
            pstmt.setInt(2, dto.getMemno());
            result = pstmt.executeUpdate();
            
            pstmt = conn.prepareStatement(sql4);
            pstmt.setInt(1, dto.getMemno());
            result = pstmt.executeUpdate();
            
            if(dto.getAuthno()==1){
               pstmt = conn.prepareStatement(sql7);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==2){
               pstmt = conn.prepareStatement(sql8);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==3){
               pstmt = conn.prepareStatement(sql9);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==4){
               pstmt = conn.prepareStatement(sql10);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }
            
         }catch(Exception e){
            e.printStackTrace();
         }finally{
            try {
               if(pstmt!=null)pstmt.close();
               if(conn!=null)conn.close();
            } catch (SQLException e) {
               e.printStackTrace();
            }
         }
      }else if(dto.getLevel()==1){
         try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getLevel());
            pstmt.setInt(2, dto.getMemno());
            result = pstmt.executeUpdate();
            
            pstmt = conn.prepareStatement(sql5);
            pstmt.setInt(1, dto.getMemno());
            result = pstmt.executeUpdate();
            
            if(dto.getAuthno()==1){
               pstmt = conn.prepareStatement(sql7);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==2){
               pstmt = conn.prepareStatement(sql8);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==3){
               pstmt = conn.prepareStatement(sql9);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==4){
               pstmt = conn.prepareStatement(sql10);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }
            
         }catch(Exception e){
            e.printStackTrace();
         }finally{
            try {
               if(pstmt!=null)pstmt.close();
               if(conn!=null)conn.close();
            } catch (SQLException e) {
               e.printStackTrace();
            }
         }
      }else{
         try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getLevel());
            pstmt.setInt(2, dto.getMemno());
            result = pstmt.executeUpdate();
            
            pstmt = conn.prepareStatement(sql5);
            pstmt.setInt(1, dto.getMemno());
            result = pstmt.executeUpdate();
            
            if(dto.getAuthno()==1){
               pstmt = conn.prepareStatement(sql7);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==2){
               pstmt = conn.prepareStatement(sql8);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==3){
               pstmt = conn.prepareStatement(sql9);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }else if(dto.getAuthno()==4){
               pstmt = conn.prepareStatement(sql10);
               pstmt.setInt(1, dto.getMemno());
               result = pstmt.executeUpdate();
            }
            
         }catch(Exception e){
            e.printStackTrace();
         }finally{
            try {
               if(pstmt!=null)pstmt.close();
               if(conn!=null)conn.close();
            } catch (SQLException e) {
               e.printStackTrace();
            }
         }
      }
      return result;
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
   
    public int updateOne(int memNo) {
         int result = 0;
         String sql = "update member set authNo=4 where memNo="+memNo;
         //System.out.println(sql);
         try {
            pstmt = conn.prepareStatement(sql);
            result = pstmt.executeUpdate();
         } catch (SQLException e) {
            e.printStackTrace();
         }finally{
            try {
               if(pstmt!=null){pstmt.close();}
               if(conn!=null){conn.close();}
            } catch (Exception e2) {
               e2.printStackTrace();
            }
         }
         return result;
      }//updateOne end

}