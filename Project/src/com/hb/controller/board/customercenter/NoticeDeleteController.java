package com.hb.controller.board.customercenter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.notice.noticeDao;

@WebServlet("/noticedelete.korean")
public class NoticeDeleteController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int notNo = Integer.parseInt(request.getParameter("notNo"));
		
		noticeDao dao = new noticeDao();
		int result = dao.deleteOne(notNo);
		
		if(result>0){
			response.sendRedirect("notice.korean");
		}else{
			response.sendRedirect("noticedetail.korean?notNo="+notNo);
		}
	}

}
