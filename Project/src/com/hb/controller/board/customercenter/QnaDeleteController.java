package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.qna.qnadao;

@WebServlet("/qnadelete.korean")
public class QnaDeleteController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		
		qnadao dao = new qnadao();
		int result = dao.deleteOne(qnaNo);
		
		if(result>0){
			response.sendRedirect("qnalist.korean");
		}
	}

}
