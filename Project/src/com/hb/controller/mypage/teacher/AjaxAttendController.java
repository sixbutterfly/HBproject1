package com.hb.controller.mypage.teacher;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.attend.AttdDao;

@WebServlet("/login/ajaxAttend.korean")
public class AjaxAttendController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//String id = request.getParameter("id");
		//String pw = request.getParameter("pw");
		String attdDate = request.getParameter("attdDate");
		String attdStatus = request.getParameter("attdStatus");
		int attdNo = Integer.parseInt(request.getParameter("attdNo"));
		
		int day = Integer.parseInt(attdDate.substring(8, 10));
		System.out.println(day);
		AttdDao dao = new AttdDao();
		
		String attdValue = dao.updateAttdValue(day, attdStatus, attdNo);
		
		/*if((attdValue == "출석") || (attdValue == "결석") || (attdValue == "지각") || (attdValue == "조퇴") || (attdValue == "미등록")){
			
			if(attdValue == "출석"){
				
			}
			
			request.getRequestDispatcher("/attend/jsonAttd.jsp").forward(request, response);
		}*/
		
		//MemberDao dao = new MemberDao();
		//int authNo = dao.loginCk(id,pw);
		
		//System.out.println(authNo);
		
		/*if(authNo==0 || authNo==1 || authNo==2 || authNo==3 || authNo==4 || authNo==5 || authNo==9){
			request.getSession().setAttribute("login", true);
			request.getSession().setAttribute("level", authNo);
			request.getSession().setAttribute("id", id);
			request.getSession().setMaxInactiveInterval(900);
		
			request.setAttribute("level", authNo);
			request.setAttribute("id", id);
			request.getRequestDispatcher("/login/json.jsp").forward(request, response);
		}		*/
				
	}

}











