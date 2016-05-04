package com.hb.controller.mypage.management;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.student.StuDao;
import com.hb.model.student.StuDto;
import com.hb.model.teacher.TeacherDao;
import com.hb.model.teacher.TeacherDto;

//강의실에서 학생 배정 취소
@WebServlet("/canclestu.korean")
public class CancleStuController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String stulist[] = req.getParameterValues("stulist"+"[]");
		String roomno = req.getParameter("roomno");
		
		//학생 테이블 업데이트
		StuDao sdao = new StuDao();
		int result = sdao.delRoomno(stulist, roomno);
		
		StuDao sdao2 = new StuDao();
		ArrayList<StuDto> slist = sdao2.selectAll();
		
		PrintWriter out = resp.getWriter();
		for (int i = 0; i < slist.size(); i++) {
			out.print(slist.get(i).getRoomno()+"/");
		}

	}
}
