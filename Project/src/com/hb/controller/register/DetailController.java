package com.hb.controller.register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.hb.model.curriculum.curriculumDto;

@WebServlet("/detailController.korean")
public class DetailController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title = new String(request.getParameter("title").getBytes("8859_1"),"utf-8");
		curriculumDao dao = new curriculumDao();
		curriculumDto dto = dao.selectOne(title);
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("register/javacurriculumPage.jsp").forward(request, response);
	}
}