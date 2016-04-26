package com.hb.controller.mypage.manager;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.dao.studyCurDao;
import com.hb.dto.studyCurDto;

@WebServlet("/curriculum.do")
public class CurriculumController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		studyCurDao dao = new studyCurDao();
		ArrayList<studyCurDto> list = dao.sellectAll();
		req.setAttribute("list", list);
		req.getRequestDispatcher("mypage/manager/manageCurriculum.jsp").forward(req, resp);
	}
}
