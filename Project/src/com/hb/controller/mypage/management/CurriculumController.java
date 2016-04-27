package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.hb.model.curriculum.curriculumDto;

@WebServlet("/curriculum.korean")
public class CurriculumController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		curriculumDao dao = new curriculumDao();
		ArrayList<curriculumDto> list = dao.selectAll();
		req.setAttribute("list", list);
		req.getRequestDispatcher("mypage/manager/manageCurriculum.jsp").forward(req, resp);
	}
}
