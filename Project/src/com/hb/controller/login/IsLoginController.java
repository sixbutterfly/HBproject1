package com.hb.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.login.MemberDao;

@WebServlet("/login/islogin.korean")
public class IsLoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDao dao = new MemberDao();
		boolean result = dao.loginCk(id,pw);
		
		if(result){
			request.getSession().setAttribute("login", true);
			request.getSession().setAttribute("id", id);
		}
		response.sendRedirect(request.getContextPath()+"/index.korean");
	}

}
