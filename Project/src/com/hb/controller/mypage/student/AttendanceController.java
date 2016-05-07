package com.hb.controller.mypage.student;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.attend.AttdDao;
import com.hb.model.attend.AttdDto;

//출결 보기
@WebServlet("/viewatt.korean")
public class AttendanceController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		AttdDao attdDao = new AttdDao();
		AttdDto attdDto = new AttdDto();
		String memberId = (String) req.getSession().getAttribute("id");
		
		//학생이름
		String stuName = attdDao.selectStuOne(memberId);
		req.setAttribute("stuName", stuName);
		
		// 출석리스트
		ArrayList<AttdDto> attdList = attdDao.selectStuAttd(memberId);
		req.setAttribute("attdList", attdList);

		
		req.getRequestDispatcher("mypage/student/viewAttendance.jsp").forward(req, resp);
	}
}
