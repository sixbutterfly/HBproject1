package com.hb.board.controller.job;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.job.jobDao;

@WebServlet("/jobdelete.korean")
public class JobDeleteController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int jobNo = Integer.parseInt(request.getParameter("jobNo"));
		
		jobDao dao = new jobDao();
		int result = dao.deleteOne(jobNo);
		
		if(result>0){
			response.sendRedirect("job.korean");
		}
	}
}
