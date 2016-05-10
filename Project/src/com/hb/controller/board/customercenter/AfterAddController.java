package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.after.afterdao;

@WebServlet("/afteradd.korean")
public class AfterAddController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String aftTitle = new String(request.getParameter("title").getBytes("8859_1"), "UTF-8");
		String aftName = new String(request.getParameter("name").getBytes("8859_1"), "UTF-8");
		String aftContent = new String(request.getParameter("content").getBytes("8859_1"), "UTF-8");
		
		afterdao dao = new afterdao();
		int result = dao.addOne(aftTitle,aftName,aftContent);
		
		if(result>0){
			response.sendRedirect("after.korean");
		}
	}

}
