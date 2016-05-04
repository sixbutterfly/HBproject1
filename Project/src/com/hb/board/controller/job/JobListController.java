package com.hb.board.controller.job;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.job.jobDao;
import com.hb.model.job.jobDto;
import com.hb.model.notice.noticeDto;

@WebServlet("/job.korean")
public class JobListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		jobDao dao = new jobDao();
		ArrayList<jobDto> list = dao.selectAll();
		request.setAttribute("list", list);
		
		dao = new jobDao();
		jobDto dto = dao.count();
		request.setAttribute("cnt", dto);
		
		request.getRequestDispatcher("jobinfo/jobinfo.jsp").forward(request, response);
	}

}
