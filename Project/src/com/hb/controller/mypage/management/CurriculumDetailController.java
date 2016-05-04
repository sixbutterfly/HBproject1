package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.hb.model.curriculum.curriculumDto;
import com.hb.model.sturoom.SturoomDao;
import com.hb.model.sturoom.SturoomDto;

@WebServlet("/curdetail.korean")
public class CurriculumDetailController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int curNo = Integer.parseInt(request.getParameter("curNo"));
		
		curriculumDao dao = new curriculumDao();
		curriculumDto dto = dao.selectOne(curNo);
		request.setAttribute("dto", dto);
		
		SturoomDao dao2 = new SturoomDao();
		ArrayList<SturoomDto> list = dao2.selectNull();
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("mypage/manager/manageCurriculumDetail.jsp").forward(request, response);
	}
}
