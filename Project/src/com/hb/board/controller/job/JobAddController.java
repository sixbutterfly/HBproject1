package com.hb.board.controller.job;

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
		String Title = new String(request.getParameter("title").getBytes("8859_1"), "UTF-8");
		String Name = new String(request.getParameter("name").getBytes("8859_1"), "UTF-8");
		String Content = new String(request.getParameter("content").getBytes("8859_1"), "UTF-8");
		
		jobDao dao = new jobDao();
		int result = dao.addOne(Title, Name, Content);
		
		if(result>0){
			response.sendRedirect("job.korean");
		}
	}

}
