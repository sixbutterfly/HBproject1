package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.qna.qnadao;

@WebServlet("/qnaedit.korean")
public class QnaEditController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		String qnaTitle = new String(request.getParameter("title").getBytes("8859_1"), "UTF-8");
		String qnaContent = new String(request.getParameter("content").getBytes("8859_1"), "UTF-8");
		
		qnadao dao = new qnadao();
		int result = dao.updateOne(qnaNo,qnaTitle,qnaContent);
		
		if(result>0){
			response.sendRedirect("qnalist.korean");
		}
	}

}
