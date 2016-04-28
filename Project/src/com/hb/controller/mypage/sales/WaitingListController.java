package com.hb.controller.mypage.sales;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.register.registerDao;
import com.hb.model.register.registerDto;

@WebServlet("/waitinlist.korean")
public class WaitingListController extends HttpServlet{
@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		registerDao dao = new registerDao();
		ArrayList<registerDto> list = dao.selectNull();
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("mypage/sales/viewWaitingList.jsp").forward(req, resp);
	}
}
