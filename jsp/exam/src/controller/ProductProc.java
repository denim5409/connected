package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberBean;
import model.MemberDAO;
import model.ProductBean;
import model.ProductDAO;

@WebServlet("/sangpum/ProductProc.do")
public class ProductProc extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String cate = request.getParameter("cate");
		String s_id = request.getParameter("s_id");
		String sname = request.getParameter("sname");
		String price = request.getParameter("price");
		

		ProductBean bean = new ProductBean();
		bean.setS_id(s_id);
		bean.setCate(cate);
		bean.setSname(sname);
		bean.setPrice(price);

		ProductDAO dao = new ProductDAO();
		int result = dao.setInsert(bean);
		
		if (result > 0) {
			response.sendRedirect("/sangpum/sangpumlist.jsp");
		} else {
			System.out.println("-- 저장 실패 --");
		}

	
	}
	
	
}
