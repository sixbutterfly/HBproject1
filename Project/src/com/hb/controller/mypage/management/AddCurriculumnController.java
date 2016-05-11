package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@WebServlet("/addcurriculum.korean")
public class AddCurriculumnController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String curName = new String(request.getParameter("curName").getBytes("8859_1"), "UTF-8");
		String curDate = new String(request.getParameter("curDate").getBytes("8859_1"), "UTF-8");
		String curLocation = new String(request.getParameter("curLocation").getBytes("8859_1"), "UTF-8");
		
//		String curName = request.getParameter("curName");
//		String curDate = request.getParameter("curDate");
//		String curLocation = request.getParameter("curLocation");
		int curSupply = Integer.parseInt(request.getParameter("curSupply"));

//		System.out.println(curName+curDate+curLocation+curSupply);
		
		curriculumDao dao = new curriculumDao();
		int result = dao.addOne(curName, curDate, curLocation, curSupply);
		if(result>0){
			response.sendRedirect("curriculum.korean");
		}else{
			response.sendRedirect("curadd.korean");
		}
	}
}