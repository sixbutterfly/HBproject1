package com.hb.controller.register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.register.registerDao;

@WebServlet("/del.korean")
public class DelController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		int curno = Integer.parseInt(request.getParameter("curno"));
		String name = request.getParameter("memname");
		
		registerDao dao = new registerDao();
		result = dao.deleteRegister(name);
		if (result>0) {
			request.getRequestDispatcher("/mypage/guest/deldone.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/mypage/teacher/deniedPage.jsp").forward(request, response);
		}
	}
}