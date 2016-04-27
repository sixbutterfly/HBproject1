package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.room.RoomDao;
import com.hb.model.room.RoomDto;
import com.hb.model.student.StuDao;
import com.hb.model.student.StuDto;
import com.hb.model.teacher.TeacherDao;
import com.hb.model.teacher.TeacherDto;

@WebServlet("/room.do")
public class RoomController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		StuDao sdao = new StuDao();
		ArrayList<StuDto> slist = sdao.selectAll();//강의실에 배정된 학생 리스트
		
		TeacherDao tdao = new TeacherDao();
		ArrayList<TeacherDto> tlist = tdao.selectAll();
		
		RoomDao rdao = new RoomDao();
		ArrayList<RoomDto> rlist = rdao.selectAll();
		
		req.setAttribute("slist", slist);
		req.setAttribute("tlist", tlist);
		req.setAttribute("rlist", rlist);
		req.getRequestDispatcher("mypage/manager/manageRoom.jsp").forward(req,resp);
	}
}
