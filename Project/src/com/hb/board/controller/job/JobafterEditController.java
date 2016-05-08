package com.hb.board.controller.job;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.jobafter.jobafterDao;

@WebServlet("/jobafteredit.korean")
public class JobafterEditController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int jafNo = Integer.parseInt(request.getParameter("jafNo"));
		String jafTitle = request.getParameter("title");
		String jafContent = request.getParameter("content");
		
		jobafterDao dao = new jobafterDao();
		int result = dao.updateOne(jafNo, jafTitle, jafContent);
		
		if(result>0){
			response.sendRedirect("jobafter.korean");
		}
	}

}
