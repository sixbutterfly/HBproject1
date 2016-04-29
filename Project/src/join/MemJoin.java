package join;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.member.MemberDao;
import com.hb.model.member.MemberDto;

@WebServlet("/memberjoin.korean")
public class MemJoin extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getCharacterEncoding();
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
		String tel = req.getParameter("tel");
		String tel2 = req.getParameter("tel2");
		String tel3 = req.getParameter("tel3");
		
		String phone = req.getParameter("phone");
		String phone2 = req.getParameter("phone2");
		String phone3 = req.getParameter("phone3");
		
		String email = req.getParameter("email");
		String email2 = req.getParameter("email2");
		String emailagree = req.getParameter("emailagree");
		
		String postnum = req.getParameter("postnum");
		String addrresult1 = req.getParameter("addrresult1");
		String addrresult2 = req.getParameter("addrresult2");
		int authno=0;
		
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto(id, pw, name, gender, tel, tel2, tel3, phone, phone2,phone3, email, email2, emailagree, postnum, addrresult1, addrresult2, authno);
		int rs = dao.memjoin(dto);
		if(rs>0){
			resp.sendRedirect("joinsuccess.korean");
		}
		else {
			resp.sendRedirect("join.korean");
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
