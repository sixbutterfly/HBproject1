package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.sturoom.sturoomDao;
import com.hb.model.sturoom.sturoomDto;

@WebServlet("/curadd.korean")
public class CurriculumAddController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		sturoomDao dao = new sturoomDao();
		ArrayList<sturoomDto> list = dao.selectNull();
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("mypage/manager/manageCurriculumAdd.jsp").forward(request, response);
	}

}
