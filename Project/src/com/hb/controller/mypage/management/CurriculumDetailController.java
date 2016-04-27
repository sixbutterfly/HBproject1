package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.studyCurDao;
import com.hb.model.curriculum.studyCurDto;
import com.hb.model.sturoom.sturoomDao;
import com.hb.model.sturoom.sturoomDto;

@WebServlet("/curdetail.korean")
public class CurriculumDetailController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int curNo = Integer.parseInt(request.getParameter("curNo"));
		
		studyCurDao dao = new studyCurDao();
		studyCurDto dto = dao.selectOne(curNo);
		request.setAttribute("dto", dto);
		
		sturoomDao dao2 = new sturoomDao();
		ArrayList<sturoomDto> list = dao2.selectNull();
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("mypage/manager/manageCurriculumDetail.jsp").forward(request, response);
	}
}
