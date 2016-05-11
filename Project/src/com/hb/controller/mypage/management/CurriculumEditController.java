package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.hb.model.curriculum.curriculumDto;
import com.hb.model.sturoom.SturoomDao;

@WebServlet("/curedit.korean")
public class CurriculumEditController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int curNo = Integer.parseInt(request.getParameter("curNo"));
		String curDate = request.getParameter("curDate");
		String curLocation = request.getParameter("curLocation");
		int curSupply = Integer.parseInt(request.getParameter("curSupply"));
		
		curriculumDao dao = new curriculumDao();
		int result = dao.editOne(curNo,curDate,curLocation,curSupply);
		
		if(result>0){
			response.sendRedirect("curriculum.korean");
		}else{
			response.sendRedirect("curdetail.korean?curNo="+curNo);
		}
	}

}
