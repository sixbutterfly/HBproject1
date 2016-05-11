package com.hb.controller.register;

import java.io.IOException;
import java.util.Enumeration;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.curriculum.curriculumDao;
import com.hb.model.curriculum.curriculumDto;
import com.hb.model.register.registerDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@WebServlet("/register.korean")
public class RegisterclassController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
//		String path = request.getRealPath("up");
		String path = "C:\\Users\\USER\\git\\HBproject1\\Project\\WebContent\\up";
//		System.out.println(path);
		FileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(request,path,1024*1024*10,policy);
	
		String curname = new String(mr.getParameter("curname").getBytes("8859_1"),"utf-8");
		curriculumDao dao2 = new curriculumDao();
		curriculumDto dto = dao2.selectOne(curname);
		int curNo = dto.getCurNo();
		
		String name = new String(mr.getParameter("name").getBytes("8859_1"),"utf-8");
		String email1 = mr.getParameter("email1");
//		String email2 = request.getParameter("email2");
		String email2 = new String(mr.getParameter("email2").getBytes("8859_1"),"utf-8");
		String email3="";
		StringTokenizer values = new StringTokenizer(email2, "\t");
		while (values.hasMoreElements()) {
			email3 = values.nextToken();
		}
		String email = email1+"@"+email3;
		
		String tel1 = mr.getParameter("tel1");
		String tel2 = mr.getParameter("tel2");
		String tel3 = mr.getParameter("tel3");
		
		String tel = "0"+tel1+"-"+tel2+"-"+tel3;
		String gubun = new String(mr.getParameter("gubun").getBytes("8859_1"),"utf-8");
		String job = mr.getParameter("job");
		String jobinfo =  new String(mr.getParameter("jobinfo").getBytes("8859_1"),"utf-8");
		String time = mr.getParameter("time");
		String pay = new String(mr.getParameter("pay").getBytes("8859_1"),"utf-8");
		String content = mr.getParameter("content");
		String password="";
		
		Enumeration fname = mr.getFileNames();
		int cnt = 0;
		String[] down = new String[2];
		while(fname.hasMoreElements()){
			String paramnm = (String)fname.nextElement();
			down[cnt] = mr.getOriginalFileName(paramnm);
//			down[cnt] = new String(mr.getOriginalFileName(paramnm).getBytes("8859_1"),"utf-8");
			cnt++;
		}
		String file1 = down[1];
		String file2 = down[0];
		
		registerDao dao = new registerDao();
		int result = dao.registerClass(curNo, name, email, tel, gubun, job, jobinfo, time, pay, content, password, file1, file2);
		
		if(result>0){
			request.getRequestDispatcher("register/registerdonePage.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("mypage/teacher/deniedPage.jsp").forward(request, response);
		}
	}
}