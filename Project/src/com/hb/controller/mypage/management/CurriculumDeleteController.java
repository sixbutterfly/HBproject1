package com.hb.controller.mypage.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;

@WebServlet("/curdelete.korean")
public class CurriculumDeleteController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int curNo = Integer.parseInt(request.getParameter("curNo"));
		
		curriculumDao dao = new curriculumDao();
		int result = dao.deleteOne(curNo);
		
		if(result>0){
			response.sendRedirect("curriculum.korean");
		}else{
			response.sendRedirect("curdetail.korean?curNo="+curNo);
		}
	}

}
