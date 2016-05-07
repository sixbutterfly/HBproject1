package com.hb.controller.register;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.hb.model.curriculum.curriculumDto;
import com.hb.model.register.registerDao;

@WebServlet("/resisterController.korean")
public class RegisterController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = "자바(JAVA)개발자 과정";
		String id = (String)request.getSession().getAttribute("id");
		
		registerDao dao1 = new registerDao();
		String name = dao1.getName(id);
		request.setAttribute("name", name);
		// 수강신청 상태인지 확인
		registerDao dao2 = new registerDao();
		int memno = dao2.getMemno(id);
		registerDao dao3 = new registerDao();
		boolean result = dao3.checkRegister(memno);
		
		curriculumDao dao4 = new curriculumDao();
		ArrayList<String> al = dao4.selectOne2();
		request.setAttribute("al", al);
		
		curriculumDao dao = new curriculumDao();
		curriculumDto dto = dao.selectOne(title);
		request.setAttribute("dto", dto);
		
		if (id=="" || id==null) {
			request.getRequestDispatcher("login/login.korean").forward(request, response);
		} else if(result) {
			request.getRequestDispatcher("register/registerdonePage.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("register/registerclassPage.jsp").forward(request, response);
		}
	}
}