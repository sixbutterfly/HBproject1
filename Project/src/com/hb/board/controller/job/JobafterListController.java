package com.hb.board.controller.job;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.jobafter.jobafterDao;
import com.hb.model.jobafter.jobafterDto;

@WebServlet("/jobafter.korean")
public class JobafterListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		jobafterDao dao = new jobafterDao();
		ArrayList<jobafterDto> list = dao.selectAll();
		request.setAttribute("list", list);
		
		dao = new jobafterDao();
		jobafterDto dto = dao.count();
		request.setAttribute("dto", dto);
		RequestDispatcher rd = request.getRequestDispatcher("/jobinfo/jobafterlist.jsp");
		rd.forward(request, response);
	}

}
