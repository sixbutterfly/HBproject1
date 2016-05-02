package com.hb.board.job;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.job.jobDao;
import com.hb.model.job.jobDto;

@WebServlet("/jobdetail.korean")
public class JobDetailController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int jobNo = Integer.parseInt(request.getParameter("jobNo"));
		
		jobDao dao = new jobDao();
		jobDto dto = dao.selectOne(jobNo);
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("jobinfo/jobinfodetail.jsp").forward(request, response);
	}

}
