package com.hb.board.job;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.job.jobDao;

@WebServlet("/jobadd.korean")
public class JobAddController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Title = request.getParameter("title");
		String Name = request.getParameter("name");
		String Content = request.getParameter("content");
		
		jobDao dao = new jobDao();
		int result = dao.addOne(Title, Name, Content);
		
		if(result>0){
			response.sendRedirect("job.korean");
		}
	}

}
