package com.hb.controller.mypage.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.studyCurDao;

@WebServlet("/addcurriculum.korean")
public class AddCurriculumnController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String curName = request.getParameter("curName");
		String curDate = request.getParameter("curDate");
		String curLocation = request.getParameter("curLocation");
		int curSupply = Integer.parseInt(request.getParameter("curSupply"));
		
		studyCurDao dao = new studyCurDao();
		int result = dao.addOne(curName, curDate, curLocation, curSupply);
		if(result>0){
			response.sendRedirect("curriculum.korean");
		}else{
			response.sendRedirect("curadd.korean");
		}
	}

}
