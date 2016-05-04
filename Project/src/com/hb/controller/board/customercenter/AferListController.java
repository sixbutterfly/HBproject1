package com.hb.controller.board.customercenter;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.after.afterdao;
import com.hb.model.after.afterdto;


@WebServlet("/after.korean")
public class AferListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		afterdao dao = new afterdao();
		ArrayList<afterdto> list = dao.selectAll();
		request.setAttribute("list", list);
		
		dao = new afterdao();
		afterdto dto = dao.count();
		request.setAttribute("cnt", dto);

		request.getRequestDispatcher("customercenter/afterlist.jsp").forward(request, response);
	}
}
