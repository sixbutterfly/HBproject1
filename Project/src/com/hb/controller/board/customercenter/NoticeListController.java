package com.hb.controller.board.customercenter;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.notice.noticeDao;
import com.hb.model.notice.noticeDto;

@WebServlet("/notice.korean")
public class NoticeListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		noticeDao dao = new noticeDao();
		ArrayList<noticeDto> list = dao.selectAll();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("customercenter/noticelist.jsp").forward(request, response);
	}

}
