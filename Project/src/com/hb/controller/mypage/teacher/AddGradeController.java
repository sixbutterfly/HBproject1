package com.hb.controller.mypage.teacher;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.grade.GradeDao;
import com.hb.model.grade.GradeDto;

@WebServlet("/addgrade.korean")
public class AddGradeController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		GradeDao dao = new GradeDao();
		
		String id = (String)req.getSession().getAttribute("id");
		int roomno = dao.getRoomno(id);
		System.out.println(id);
		System.out.println(roomno);
		if (id.equals("admin")) {
			ArrayList<GradeDto> al = dao.list();
			req.setAttribute("al", al);
			req.getRequestDispatcher("mypage/teacher/addGrade.jsp").forward(req, resp);
		} else if (roomno>0) {
			ArrayList<GradeDto> al = dao.list(roomno);
			req.setAttribute("al", al);
			req.getRequestDispatcher("mypage/teacher/addGrade.jsp").forward(req, resp);
		} else {
			req.getRequestDispatcher("mypage/teacher/deniedPage.jsp").forward(req, resp);
		}
	}
}