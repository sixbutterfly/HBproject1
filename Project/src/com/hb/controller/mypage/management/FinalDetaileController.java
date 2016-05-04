package com.hb.controller.mypage.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.hb.model.curriculum.curriculumDto;
import com.hb.model.register.registerDao;
import com.hb.model.register.registerDto;

@WebServlet("/finaldatile.korean")
public class FinalDetaileController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		registerDao dao = new registerDao();
		registerDto dto = dao.seletOne(memNo);
		
		int curNo = dto.getCurNo();
		curriculumDao cdao = new curriculumDao();
		curriculumDto cdto = cdao.selectOne(curNo);
		
		request.setAttribute("dto", dto);
		request.setAttribute("cdto", cdto);
		
		request.getRequestDispatcher("mypage/manager/managerFinalDetail.jsp").forward(request, response);
	}

}
