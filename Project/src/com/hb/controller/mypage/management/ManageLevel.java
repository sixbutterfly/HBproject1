package com.hb.controller.mypage.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.member.MemberDao;
import com.hb.model.member.MemberDto;

@WebServlet("/managelevel.korean")
public class ManageLevel extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int memno = Integer.parseInt(req.getParameter("num"));
		int level = Integer.parseInt(req.getParameter("chlevel"));
		int beforelevel = Integer.parseInt(req.getParameter("level"));
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto(memno, level,beforelevel);
		int result = dao.updateLevel(dto);
		
		if(result>0){
			resp.sendRedirect("manageall.korean");
		}else{
			resp.sendRedirect("mypage.korean");
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
