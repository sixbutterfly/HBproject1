package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.sturoom.SturoomDao;
import com.hb.model.sturoom.SturoomDto;

@WebServlet("/curadd.korean")
public class CurriculumAddController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SturoomDao dao = new SturoomDao();
		ArrayList<SturoomDto> list = dao.selectNull();
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("mypage/manager/manageCurriculumAdd.jsp").forward(request, response);
	}

}
