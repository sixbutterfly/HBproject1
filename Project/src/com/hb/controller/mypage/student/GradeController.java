package com.hb.controller.mypage.student;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.student.StuDao;

@WebServlet("/viewgrade.do")
public class GradeController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String memno="", name="", roomno="", javagrade="", webgrade="", framegrade="";
		
		String id = (String)req.getSession().getAttribute("id");
		if (id=="" || id==null) {
			req.getRequestDispatcher("/mypage/teacher/deniedPage.jsp").forward(req, resp);
		} else {
			StuDao dao = new StuDao();
			String info = dao.selectGrade(id);
			if (info=="" || info==null) {
				req.getRequestDispatcher("/mypage/teacher/deniedPage.jsp").forward(req, resp);
			} else {
				StringTokenizer st = new StringTokenizer(info);
				while (st.hasMoreTokens()) {
					memno = (String) st.nextToken();
					name = (String) st.nextToken();
					roomno = (String) st.nextToken();
					javagrade = (String) st.nextToken();
					webgrade = (String) st.nextToken();
					framegrade = (String) st.nextToken();
				}
				req.setAttribute("memno", memno);
				req.setAttribute("name", name);
				req.setAttribute("roomno", roomno);
				req.setAttribute("javagrade", javagrade);
				req.setAttribute("webgrade", webgrade);
				req.setAttribute("framegrade", framegrade);
				req.getRequestDispatcher("mypage/student/viewGrade.jsp").forward(req, resp);
			}
		}
	}
}