package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.notice.noticeDao;

@WebServlet("/noticeadd.korean")
public class NoticeAddController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = new String(request.getParameter("title").getBytes("8859_1"), "UTF-8");
		String name = new String(request.getParameter("name").getBytes("8859_1"), "UTF-8");
		String content = new String(request.getParameter("content").getBytes("8859_1"), "UTF-8");
//		String title = request.getParameter("title");
//		String name = request.getParameter("name");
//		String content = request.getParameter("content");
		
		noticeDao dao = new noticeDao();
		int result = dao.addOne(title,name,content);
		
		if(result>0){
			response.sendRedirect("notice.korean");
		}
	}

}
