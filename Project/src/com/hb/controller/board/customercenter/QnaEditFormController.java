package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.qna.qnadao;
import com.hb.model.qna.qnadto;

@WebServlet("/qnaeditform.korean")
public class QnaEditFormController extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		
		qnadao dao = new qnadao();
		qnadto dto = dao.selectOne(qnaNo);
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("customercenter/qnaedit.jsp").forward(request, response);
	}

}
