package com.hb.controller.mypage.teacher;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gradeDetail.korean")
public class DetailGradeController extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("stuno", Integer.parseInt(req.getParameter("stuno")));
		req.setAttribute("name", req.getParameter("name"));
		req.setAttribute("roomno", req.getParameter("roomno"));
		req.setAttribute("javagrade", req.getParameter("javagrade"));
		req.setAttribute("webgrade", req.getParameter("webgrade"));
		req.setAttribute("framegrade", req.getParameter("framegrade"));
		
		req.getRequestDispatcher("/mypage/teacher/gradeDetail.jsp").forward(req, resp);
	}
}