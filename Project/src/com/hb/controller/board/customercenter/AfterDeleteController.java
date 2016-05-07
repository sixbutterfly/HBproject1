package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.after.afterdao;

@WebServlet("/afterdelete.korean")
public class AfterDeleteController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int aftNo = Integer.parseInt(request.getParameter("aftNo"));
		
		afterdao dao = new afterdao();
		int result = dao.deleteOne(aftNo);
		
		if(result>0){
			response.sendRedirect("after.korean");
		}
	}

}
