package com.hb.controller.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.UserDao;

/**
 * Servlet implementation class IsLoginController
 */
@WebServlet("/login/islogin.naver")
public class IsLoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		
		UserDao dao = new UserDao();
		boolean result = dao.loginCk(num,name);
		
		if(result){
			request.getSession().setAttribute("login", true);
			request.getSession().setAttribute("id", name);
		}
		response.sendRedirect(request.getContextPath()+"/index.naver");
	}

}
