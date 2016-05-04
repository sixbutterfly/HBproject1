package com.hb.controller.main;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.after.afterdao;
import com.hb.model.after.afterdto;
import com.hb.model.notice.noticeDao;
import com.hb.model.notice.noticeDto;

@WebServlet("/index.korean")
public class MainCotroller extends HttpServlet {
	int start;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(start == 0){
			request.getSession().setAttribute("login", false);
			++start;
		}
		request.getRequestDispatcher("main.jsp").forward(request, response);		
		
		noticeDao dao = new noticeDao();
		ArrayList<noticeDto> list = dao.selectList();
		request.setAttribute("list", list);
		
		afterdao dao2 = new afterdao();
		ArrayList<afterdto> list2 = dao2.selectList();
		request.setAttribute("list2", list2);
		
		request.getRequestDispatcher("main.jsp").forward(request, response);
	}
}
