package com.hb.controller.mypage.management;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.room.RoomDao;

@WebServlet("/assignroom.korean")
public class AssignRoomController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		RoomDao rdao = new RoomDao();
		String tchlist[] = req.getParameterValues("tchlist"+"[]");
		String roomlist[] = req.getParameterValues("roomlist"+"[]");
		int result = rdao.updateAll(tchlist, roomlist);
	}
}
