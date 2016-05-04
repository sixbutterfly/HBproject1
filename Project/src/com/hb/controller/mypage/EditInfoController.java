package com.hb.controller.mypage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.member.MemberDao;
import com.hb.model.member.MemberDto;

@WebServlet("/editinfo.korean")
public class EditInfoController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("id");
		if (id=="" || id==null) {
			request.getRequestDispatcher("/mypage/teacher/deniedPage.jsp").forward(request, response);
		} else {
			MemberDto dto = new MemberDto();
			MemberDao dao = new MemberDao();
			dto = dao.selectOne2(id);
			String phone1="";
			String phone2="";
			String phone3="";
			String tel1="";
			String tel2="";
			String tel3="";
			String email1="";
			String email2="";
			String pw=dto.getPw();
			
			String memphone = dto.getMemphone();
			StringTokenizer st = new StringTokenizer(memphone, "-");
			while (st.hasMoreElements()) {
				phone1 = (String) st.nextElement();
				phone2 = (String) st.nextElement();
				phone3 = (String) st.nextElement();
			}
			
			String memtel = (String) dto.getMemtel();
			StringTokenizer st2 = new StringTokenizer(memtel, "-");
			while (st2.hasMoreElements()) {
				tel1 = (String) st2.nextElement();
				tel2 = (String) st2.nextElement();
				tel3 = (String) st2.nextElement();
			}
			
			String mememail = (String) dto.getMememail();
			StringTokenizer st3 = new StringTokenizer(mememail, "@");
			while (st3.hasMoreElements()) {
				email1 = (String) st3.nextElement();
				email2 = (String) st3.nextElement();
			}
			
			request.setAttribute("dto", dto);
			request.setAttribute("tel1", tel1);
			request.setAttribute("tel2", tel2);
			request.setAttribute("tel3", tel3);
			request.setAttribute("phone1", phone1);
			request.setAttribute("phone2", phone2);
			request.setAttribute("phone3", phone3);
			request.setAttribute("email1", email1);
			request.setAttribute("email2", email2);
			request.setAttribute("pw", pw);
			request.getRequestDispatcher("/mypage/editInfo.jsp").forward(request, response);
		}
	}
}