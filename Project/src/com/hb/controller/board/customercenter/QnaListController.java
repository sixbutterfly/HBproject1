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
import com.hb.model.qna.qnadao;
import com.hb.model.qna.qnadto;

@WebServlet("/qnalist.korean")
public class QnaListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		qnadao dao = new qnadao(); 
		ArrayList<qnadto> list = dao.selectAll();
		request.setAttribute("list", list);
		
		dao = new qnadao();
		qnadto dto = dao.count();
		request.setAttribute("cnt", dto);

		request.getRequestDispatcher("customercenter/qnalist.jsp").forward(request, response);
	}

}
