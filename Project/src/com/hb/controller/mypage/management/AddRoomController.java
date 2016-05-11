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

//���ǽǿ� �л� ��ġ
@WebServlet("/addroom.korean")
public class AddRoomController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String newroomno = req.getParameter("newroomno");
		
		//�л� ���̺� ������Ʈ
		StuDao sdao = new StuDao();
		int result = sdao.addRoom(newroomno);
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		if(result>0){
			out.print("추가성공");
		}else{
			out.print("추가실패");
		}
	}
}
