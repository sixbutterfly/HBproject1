package com.hb.controller.register;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.register.registerDao;

@WebServlet("/register.korean")
public class RegisterclassController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = (String) request.getSession().getAttribute("id");
		String name = request.getParameter("name");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email3="";
		StringTokenizer values = new StringTokenizer(email2, "\t");
		while (values.hasMoreElements()) {
			email3 = values.nextToken();
		}
		String email = email1+"@"+email3;
		int tel1 = Integer.parseInt(request.getParameter("tel1"));
		int tel2 = Integer.parseInt(request.getParameter("tel2"));
		int tel3 = Integer.parseInt(request.getParameter("tel3"));
		String tel = "0"+tel1+"-"+tel2+"-"+tel3;
		String gubun = request.getParameter("gubun");
		String job = request.getParameter("job");
		String jobinfo = request.getParameter("jobinfo");
		String file1 = request.getParameter("file1");
		String file2 = request.getParameter("file2");
		String time = request.getParameter("time");
		String pay = request.getParameter("pay");
		String content = request.getParameter("content");
		String password = request.getParameter("password");
		
		registerDao dao = new registerDao();
		int result = dao.registerClass(id, name, email, tel, gubun, job, jobinfo, time, pay, content, password, file1, file2);
		
		if (result>0) {
			request.getRequestDispatcher("register/registerdonePage.jsp").forward(request, response);
		} else {
			System.out.println("���� ��� ����");
		}
	}
}