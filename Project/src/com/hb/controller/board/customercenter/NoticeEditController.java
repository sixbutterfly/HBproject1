package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.notice.noticeDao;

@WebServlet("/noticeedit.korean")
public class NoticeEditController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int notNo = Integer.parseInt(request.getParameter("notNo"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		//System.out.println(notNo+title+content);
		
		noticeDao dao = new noticeDao();
		int result = dao.updateOne(notNo,title,content);
		
		if(result>0){
			response.sendRedirect("notice.korean");
		}else{
			response.sendRedirect("noticeeditform.korean?notNo="+notNo );
		}
	}

}
