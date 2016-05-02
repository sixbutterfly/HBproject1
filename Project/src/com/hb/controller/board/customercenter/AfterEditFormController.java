package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.after.afterdao;
import com.hb.model.after.afterdto;

@WebServlet("/aftereditform.korean")
public class AfterEditFormController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int aftNo = Integer.parseInt(request.getParameter("aftNo"));
		
		afterdao dao = new afterdao();
		afterdto dto = dao.selectOne(aftNo);
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("customercenter/afteredit.jsp").forward(request, response);
	}

}
