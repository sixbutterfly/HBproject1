package join;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/memberjoin.do")
public class MemJoin extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
//		if(name.equals("gender")){
//		String gender = req.getParameter(name);
//		}
		int tel = Integer.parseInt(req.getParameter("tel"));
		int tel2 = Integer.parseInt(req.getParameter("tel2"));
		int tel3 = Integer.parseInt(req.getParameter("tel3"));
		
		int phone = Integer.parseInt(req.getParameter("phone"));
		int phone2 = Integer.parseInt(req.getParameter("phone2"));
		int phone3 = Integer.parseInt(req.getParameter("phone3"));
		
		String email = req.getParameter("email");
		String email2 = req.getParameter("email2");
		String emailagree = req.getParameter("emailagree");
		
		String postnum = req.getParameter("postnum");
		String adrresult1 = req.getParameter("adrresult1");
		String adrresult2 = req.getParameter("adrresult2");
	}
}
