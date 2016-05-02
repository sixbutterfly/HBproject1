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
	String memberId = (String)req.getSession().getAttribute("id");
	
	
	//날짜
	
	
	//강사이름
	String tchName = attdDao.selectTchName(memberId);	
	System.out.println(tchName);
	
	req.setAttribute("tchName", tchName);
	
	/*//강의실번호
	int roomNo = attdDao.selectRoomNo(memberId);
	System.out.println(roomNo);
	
	req.setAttribute("roomNo", roomNo);*/
	
	//출석리스트
	/*ArrayList attdList = attdDao.selectAttd(memberId);*/
	
	
	req.getRequestDispatcher("mypage/teacher/addAttendance.jsp").forward(req, resp);
	
	
}
}
