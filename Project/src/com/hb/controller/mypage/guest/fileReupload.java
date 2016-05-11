package com.hb.controller.mypage.guest;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.register.registerDao;

@WebServlet("/fileReupload.korean")
public class fileReupload extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newfile1 = new String(request.getParameter("newfile1").getBytes("8859_1"), "UTF-8");
		String newfile2 = new String(request.getParameter("newfile2").getBytes("8859_1"), "UTF-8");
		String oldfile1 = new String(request.getParameter("oldfile1").getBytes("8859_1"), "UTF-8");
		String oldfile2 = new String(request.getParameter("oldfile2").getBytes("8859_1"), "UTF-8");
		System.out.println("newfile1 : "+newfile1);
		System.out.println("newfile2 : "+newfile2);
		System.out.println("oldfile1 : "+oldfile1);
		System.out.println("oldfile2 : "+oldfile2);
		
		if (oldfile1==null || oldfile1=="" || oldfile1.equals("null") || oldfile1.equals("")) {
			if (newfile1==null || newfile1=="" || newfile1.equals("null") || newfile1.equals("")) newfile1="첨부파일 없음";
		} else {
			if (newfile1==null || newfile1=="" || newfile1.equals("null") || newfile1.equals("")) newfile1=oldfile1;
		}
		if (oldfile2==null || oldfile2=="" || oldfile2.equals("null") || oldfile2.equals("")) {
			if (newfile2==null || newfile2=="" || newfile2.equals("null") || newfile2.equals("")) newfile2="첨부파일 없음";
		} else {
			if (newfile1==null || newfile1=="" || oldfile2.equals("null") || oldfile2.equals("")) newfile2=oldfile2;
		}
		String curno = request.getParameter("curno");
		
		registerDao dao  = new registerDao();
		int result = dao.updateFile(newfile1, newfile2, curno);
		if (result>0) {
			request.getRequestDispatcher("/mypage/guest/fileReuploadDone.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/mypage/teacher/deniedPage.jsp").forward(request, response);
		}
	}
}