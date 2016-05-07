package com.hb.controller.mypage.guest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.register.registerDao;
import com.hb.model.register.registerDto;


@WebServlet("/applist.korean")
public class AppListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = (String)req.getSession().getAttribute("id");
		
		registerDao dao = new registerDao();
		int memno = dao.getMemno(id);
		
		registerDao dao2 = new registerDao();
		registerDto bean = dao2.seletOne(memno);
		req.setAttribute("bean", bean);
		
		registerDao dao3 = new registerDao();
		String curname = dao3.getCurname(memno);
		req.setAttribute("curname", curname);
		
		if (bean.getName()==null) {
			req.getRequestDispatcher("mypage/guest/noRegisterPage.jsp").forward(req, resp);
		} else {
			req.getRequestDispatcher("mypage/guest/appList.jsp").forward(req, resp);
		}
	}
}