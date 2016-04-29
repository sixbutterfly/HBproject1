package com.hb.controller.mypage.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.grade.GradeDao;
import com.hb.model.member.MemberDao;
import com.hb.model.register.registerDao;
import com.hb.model.student.StuDao;

@WebServlet("/finalConfirm.korean")
public class FinalConfitmController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		int result = 0;
		
		MemberDao mdao = new MemberDao();
		result = mdao.updateOne(memNo);
		if(result>0){
			StuDao sdao = new StuDao();
			result = sdao.addOne(memNo);
			if(result>0){
				registerDao rdao = new registerDao();
				result = rdao.deleteOne(memNo);
					if(result>0){
						response.sendRedirect("finallist.korean");
					}else{
						response.sendRedirect("finaldatile.korean?memNo="+memNo);
					}
			}
		}
	}
}
