package com.hb.controller.mypage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.login.MemberDao;
import com.hb.model.login.MemberDto;

@WebServlet("/editinfo.korean")
public class EditInfoController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("id");
		if (id=="" || id==null) {
			System.out.println("로그인이 안되있음");
			request.getRequestDispatcher("/mypage/teacher/deniedPage.jsp").forward(request, response);
		} else {
			ArrayList<MemberDto> al = new ArrayList<MemberDto>();
			MemberDao dao = new MemberDao();
			
			al = dao.selectOne(id);
			request.setAttribute("al", al);
			request.getRequestDispatcher("/mypage/editInfo.jsp").forward(request, response);
		}
	}
}
