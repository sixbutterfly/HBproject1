package com.hb.controller.mypage.teacher;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.grade.GradeDao;

@WebServlet("/editGrade.korean")
public class editGradeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int stuno = Integer.parseInt(request.getParameter("stuno"));
		String javagrade = request.getParameter("javagrade");
		String webgrade = request.getParameter("webgrade");
		String framegrade = request.getParameter("framegrade");
		GradeDao dao = new GradeDao();
		int result = dao.addGrade(stuno, javagrade, webgrade, framegrade);
		if (result>0) {
			request.getRequestDispatcher("addgrade.korean").forward(request, response);
		} else {
		}
	}
}