package com.hb.controller.register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.register.registerDao;

@WebServlet("/resisterController.korean")
public class RegisterController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("id");
		registerDao dao = new registerDao();
		String name = dao.getName(id);
		request.setAttribute("name", name);
		
		request.getRequestDispatcher("register/registerclassPage.jsp").forward(request, response);
	}
}