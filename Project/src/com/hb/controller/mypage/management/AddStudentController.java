package com.hb.controller.mypage.management;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.student.StuDao;

//���ǽǿ� �л� ��ġ
@WebServlet("/addstu.korean")
public class AddStudentController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		StuDao dao = new StuDao();
		
		req.getRequestDispatcher("mypage/manager/addstu.jsp").forward(req, resp);
	}
}