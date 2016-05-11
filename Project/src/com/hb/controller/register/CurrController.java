package com.hb.controller.register;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.hb.model.curriculum.curriculumDto;
import com.hb.model.register.registerDao;
import com.hb.model.register.registerDto;

@WebServlet("/registerInfo.korean")
public class CurrController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		curriculumDao dao = new curriculumDao();
		ArrayList<curriculumDto> array = dao.selectAll();
		request.setAttribute("array", array);
		request.getRequestDispatcher("register/curriculumInfo.jsp").forward(request, response);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}