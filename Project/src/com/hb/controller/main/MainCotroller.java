package com.hb.controller.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index.korean")
public class MainCotroller extends HttpServlet {
	int start;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(start == 0){
			request.getSession().setAttribute("login", false);
			++start;
		}
		request.getRequestDispatcher("main.jsp").forward(request, response);		
	}
}
