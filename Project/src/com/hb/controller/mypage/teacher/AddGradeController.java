package com.hb.controller.mypage.teacher;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.grade.GradeDao;
import com.hb.model.grade.GradeDto;

@WebServlet("/addgrade.do")
public class AddGradeController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		GradeDao dao = new GradeDao();
		GradeDto bean = dao.list();
		req.setAttribute("bean", bean);
		req.getRequestDispatcher("mypage/teacher/addGrade.jsp").forward(req, resp);
	}
}