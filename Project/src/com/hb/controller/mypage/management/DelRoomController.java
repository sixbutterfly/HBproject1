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

import com.hb.model.sturoom.SturoomDao;
import com.hb.model.teacher.TeacherDao;
import com.hb.model.teacher.TeacherDto;

//���ǽ� ����
@WebServlet("/delroom.korean")
public class DelRoomController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String roomlist[] = req.getParameterValues("roomlist" + "[]");
		// ���� ���̺� ������Ʈ
		SturoomDao rdao = new SturoomDao();
		int result = rdao.delRoom(roomlist);
		
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		if(result>0){
			out.print("삭제됐습니다");
		}else{
			out.print("삭제할 수 없는 강의실이 포함되어 있습니다.");
		}
	}
}
