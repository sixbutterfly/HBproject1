package com.hb.controller.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mypage.korean")
public class MyPageController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {	
	req.setCharacterEncoding("utf-8");
		
		/*Integer authNo = (Integer)req.getSession().getAttribute("authNo");
		int auth = authNo.intValue(); */
				
		Boolean login = (Boolean)req.getSession().getAttribute("login");
		System.out.println(login);
		if(login==false){
			resp.sendRedirect("login/login.korean");
		}
		else{
			req.getRequestDispatcher("mypage/mypage.jsp").forward(req, resp);
		}
	}
}
