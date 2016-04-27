package management;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/mglevel.do")
public class Manage extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		ArrayList<MemberDto> arr = dao.list();
		req.setAttribute("list", arr);
		
		req.getRequestDispatcher("mypage/manager/manageLevel.jsp").forward(req, resp);
	}
}
