package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.notice.noticeDao;
import com.hb.model.notice.noticeDto;

@WebServlet("/noticedetail.korean")
public class NoticeDetailController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int notNo = Integer.parseInt(request.getParameter("notNo"));
		
		noticeDao dao = new noticeDao();
		noticeDto dto = dao.selectOne(notNo);
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("customercenter/noticdetail.jsp").forward(request, response);
	}

}
