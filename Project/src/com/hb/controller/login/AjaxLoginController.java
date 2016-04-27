package com.hb.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.login.MemberDao;

@WebServlet("/login/ajaxlogin.korean")
public class AjaxLoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDao dao = new MemberDao();
		boolean result = dao.loginCk(id,pw);
		
		if(result){
			request.getSession().setAttribute("login", true);
			request.getSession().setAttribute("id", id);
			request.getSession().setMaxInactiveInterval(900);
		
			request.setAttribute("result", true);
			request.setAttribute("id", id);
			request.getRequestDispatcher("/login/json.jsp").forward(request, response);
		}
	}

}











