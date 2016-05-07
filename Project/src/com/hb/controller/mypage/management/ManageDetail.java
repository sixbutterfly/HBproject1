package com.hb.controller.mypage.management;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.member.MemberDao;
import com.hb.model.member.MemberDto;

@WebServlet("/memdetail.korean")
public class ManageDetail extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int memno = Integer.parseInt(req.getParameter("idx"));
		MemberDao dao = new MemberDao();
		MemberDto dto = dao.selectOne(memno);
		
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("mypage/manager/manageDetail.jsp").forward(req, resp);
	}
}







