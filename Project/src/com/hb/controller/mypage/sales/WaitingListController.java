package com.hb.controller.mypage.sales;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/waitinlist.do")
public class WaitingListController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	req.getRequestDispatcher("mypage/sales/viewWaitingList.jsp").forward(req, resp);
}
}
