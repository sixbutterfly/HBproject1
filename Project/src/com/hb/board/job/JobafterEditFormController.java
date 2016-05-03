package com.hb.board.job;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.jobafter.jobafterDao;
import com.hb.model.jobafter.jobafterDto;

@WebServlet("/jobaftereditform.korean")
public class JobafterEditFormController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int jafNo = Integer.parseInt(request.getParameter("jafNo"));
		
		jobafterDao dao = new jobafterDao();
		jobafterDto dto = dao.selectOne(jafNo);
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("jobinfo/jobafteredit.jsp").forward(request, response);
	}
}
