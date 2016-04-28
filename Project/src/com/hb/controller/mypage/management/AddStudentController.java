package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.student.StuDao;
import com.hb.model.student.StuDto;

//강의실에 학생 배치
@WebServlet("/addstu.korean")
public class AddStudentController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		StuDao sdao = new StuDao();
		ArrayList<StuDto> slist = sdao.selectWaitingList();
		req.setAttribute("slist", slist);
		req.getRequestDispatcher("mypage/manager/addstu.jsp").forward(req, resp);
	}
}
