package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberBean;
import model.MemberDAO;

@WebServlet("/member/joinProc.do")
public class joinProc extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");

		MemberBean bean = new MemberBean();
		bean.setId(id);
		bean.setName(name);

		MemberDAO dao = new MemberDAO();
		int result = dao.setInsert(bean);
		
		if (result > 0) {
			response.sendRedirect("/member/list.jsp");
		} else {
			System.out.println("-- 저장 실패 --");
		}
		
	}
	//servlet도 앞글자 대문자로 해야 함.
}
