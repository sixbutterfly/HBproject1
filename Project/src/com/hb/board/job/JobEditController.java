package com.hb.board.job;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.job.jobDao;

@WebServlet("/jobedit.korean")
public class JobEditController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int jobNo = Integer.parseInt(request.getParameter("jobNo"));
		String jobTitle = request.getParameter("title");
		String jobContent = request.getParameter("content");
		
		jobDao dao = new jobDao();
		int result = dao.updateOne(jobNo, jobTitle, jobContent);
		
		if(result>0){
			response.sendRedirect("job.korean");
		}
	}

}
