package com.hb.controller.mypage.teacher;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.attend.AttdDao;
import com.hb.model.attend.AttdDto;
import com.hb.model.teacher.TeacherDao;

@WebServlet("/addatt.do")
public class AddAttendanceController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	
	
		
	AttdDao attdDao = new AttdDao();
	
	String meberId = (String)req.getSession().getAttribute("id");
	String tchName = attdDao.tchNameSel(meberId);
	req.setAttribute("tchName", tchName);
	tchName = (String) req.getSession().getAttribute("id");
	
	/*ArrayList<AttdDto> attdList = attdDao.attdSelect();	
	req.setAttribute("attdList", attdList);*/
	
	req.getRequestDispatcher("mypage/teacher/addAttendance.jsp").forward(req, resp);
	
	
}
}
