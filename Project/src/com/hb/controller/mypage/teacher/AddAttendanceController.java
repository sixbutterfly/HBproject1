package com.hb.controller.mypage.teacher;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.attend.AttdDao;
import com.hb.model.attend.AttdDto;
import com.hb.model.sturoom.SturoomDto;
import com.hb.model.teacher.TeacherDto;

@WebServlet("/addatt.korean")
public class AddAttendanceController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		AttdDao attdDao = new AttdDao();
		AttdDto attdDto = new AttdDto();
		String memberId = (String) req.getSession().getAttribute("id");
		
		//��¥
		//Date attdDate = attdDao.selectAttendDate();

		// �����̸�
		String tchName = attdDao.selectTchName(memberId);
		req.setAttribute("tchName", tchName);
		//System.out.println(tchName);
		
		// �������� ���縮��Ʈ
		/*ArrayList<TeacherDto> tchList = attdDao.selectTchOne();		
		req.setAttribute("tchList", tchList);
*/
		// ���ǽǹ�ȣ
		int roomNo = attdDao.selectRoomNo(memberId);
		req.setAttribute("roomNo", roomNo);
		//System.out.println(roomNo);
		
		// �������� ���ǽǸ���Ʈ
		ArrayList<SturoomDto> roomList = attdDao.selectRoomList();		
		req.setAttribute("roomList", roomList);

		// �⼮����Ʈ
		ArrayList<AttdDto> attdList = attdDao.selectAttdList(memberId);
		req.setAttribute("attdList", attdList);
		
		/*// �������� �⼮����Ʈ
		ArrayList<AttdDto> attdList = attdDao.selectAttdmList(memberId);
		req.setAttribute("attdList", attdList);*/

		req.getRequestDispatcher("mypage/teacher/addAttendance.jsp").forward(req, resp);
	}
}
