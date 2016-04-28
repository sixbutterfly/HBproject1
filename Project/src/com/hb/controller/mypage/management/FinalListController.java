package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.register.registerDao;
import com.hb.model.register.registerDto;

@WebServlet("/finallist.korean")
public class FinalListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		registerDao dao = new registerDao();
		ArrayList<registerDto> list = dao.selectFinal();
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("mypage/manager/manageFinalList.jsp").forward(req, resp);
	}
}
