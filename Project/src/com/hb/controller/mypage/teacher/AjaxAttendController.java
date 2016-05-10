package com.hb.controller.mypage.teacher;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.attend.AttdDao;

@WebServlet("/attend/ajaxAttend.korean")
public class AjaxAttendController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String attdDate = request.getParameter("attdDate");
		String attdStatus = request.getParameter("attdStatus");
		String[] atdNo =  request.getParameterValues("checkArray"+"[]");
		
		Integer[] attdNo = new Integer[atdNo.length];
		for(int i = 0; i < atdNo.length; i++){
			attdNo[i] = new Integer(atdNo[i]);
		}
		
		int day = Integer.parseInt(attdDate.substring(8, 10));
		AttdDao dao = new AttdDao();
		
		int result = dao.updateAttdValue(day, attdStatus, attdNo);
		
		int level = (Integer)request.getSession().getAttribute("level");
		
		if(result==1){
			request.setAttribute("day", day);
			request.setAttribute("attdStatus", attdStatus);
			//for(int i = 0; i < atdNo.length; i++){
			request.setAttribute("atdNo", atdNo);
			//System.out.println(attdNo[0]);
			//System.out.println(attdNo[1]);
			//}
			request.setAttribute("level", level);			
			request.getRequestDispatcher("/mypage/teacher/jsonAttd.jsp").forward(request, response);			
		}		
	}

}











