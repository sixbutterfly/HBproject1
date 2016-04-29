package management;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.member.MemberDao;
import com.hb.model.member.MemberDto;


@WebServlet("/manageall.korean")
public class Manage extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		ArrayList<MemberDto> list = null;
		try {
			list = dao.selectAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("mypage/manager/manageAll.jsp").forward(req, resp);
	}
}
