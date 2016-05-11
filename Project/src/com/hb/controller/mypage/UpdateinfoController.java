package com.hb.controller.mypage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.member.MemberDao;
import com.hb.model.member.MemberDto;

@WebServlet("/updateinfo.korean")
public class UpdateinfoController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int memno = Integer.parseInt(request.getParameter("memno"));
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel = tel1+"-"+tel2+"-"+tel3;
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String phone = phone1+"-"+phone2+"-"+phone3;
		String address1 = request.getParameter("postnum");
		String address2 = new String(request.getParameter("addrresult1").getBytes("8859_1"), "UTF-8");
		String address3 = new String(request.getParameter("addrresult2").getBytes("8859_1"), "UTF-8");
		String address = address1+", "+address2+" "+address3;
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email = email1+"@"+email2;
		String emailagree = request.getParameter("emailagree");
		String pw = request.getParameter("pw");
		MemberDao dao2 = new MemberDao();
		MemberDto bean = dao2.selectOne2((String)request.getSession().getAttribute("id"));
		String pastpw = bean.getPw();
		if (pw=="" || pw==null) {
			pw=pastpw;
		}
		MemberDao dao = new MemberDao();
		int result = dao.updateInfo(memno, tel, phone, address, email, emailagree, pw);
		if (result>0) {
			request.getRequestDispatcher("mypage/editsuccess.jsp").forward(request, response);
		} else {
			response.sendRedirect("mypage/teacher/deniedPage");
		}
	}
}