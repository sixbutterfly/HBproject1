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

import com.hb.model.teacher.TeacherDao;
import com.hb.model.teacher.TeacherDto;

//강사 테이블 배치 취소
@WebServlet("/cancletch.korean")
public class CancleTchController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String tchlist[] = req.getParameterValues("tchlist" + "[]");
		String checklist[] = req.getParameterValues("checklist" + "[]");
		// 강사 테이블 업데이트
		TeacherDao tdao = new TeacherDao();
		int result2 = tdao.removeAll(tchlist, checklist);
		
		TeacherDao tdao2 = new TeacherDao();
		ArrayList<TeacherDto> tlist = new ArrayList();
		tlist = tdao2.selectAll();
		
		PrintWriter out = resp.getWriter();
		for (int i = 0; i < tlist.size(); i++) {
			out.print(tlist.get(i).getRoomno()+"/");
		}
	}
}
