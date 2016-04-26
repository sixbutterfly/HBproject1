package com.hb.controller.mypage.management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.student.StuDao;
import com.hb.model.student.StuDto;

@WebServlet("/room.do")
public class RoomController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		StuDao dao = new StuDao();
		ArrayList<StuDto> list = dao.selectRoomList();//���ǽǿ� ������ �л� ����Ʈ
		req.setAttribute("list", list);
		req.getRequestDispatcher("mypage/manager/manageRoom.jsp").forward(req,resp);
	}
}
