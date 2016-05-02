package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.room.RoomDao;
import com.hb.model.room.RoomDto;
import com.hb.model.student.StuDao;
import com.hb.model.student.StuDto;

//���ǽǿ� �л� ��ġ ���
@WebServlet("/addstuform.korean")
public class AddStuFormController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		StuDao sdao = new StuDao();
		ArrayList<StuDto> slist = sdao.selectWaitingList();
		
		RoomDao rdao = new RoomDao();
		ArrayList<RoomDto> rlist = rdao.selectAll();
		
		
		req.setAttribute("slist", slist);
		req.setAttribute("rlist", rlist);
		req.getRequestDispatcher("mypage/manager/addstu.jsp").forward(req, resp);
	}
}
