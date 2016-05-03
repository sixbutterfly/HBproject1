package com.hb.board.job;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.jobafter.jobafterDao;

@WebServlet("/jobafteradd.korean")
public class JobafterAddController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		jobafterDao dao = new jobafterDao();
		int result = dao.addOne(title, name, content);
		
		if(result>0){
			response.sendRedirect("jobafter.korean");
		}
	}

}
