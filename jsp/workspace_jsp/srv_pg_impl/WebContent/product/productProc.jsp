<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "model.ProductBean" %>
<%@ page import = "model.ProductDAO" %>

<jsp:useBean id="bean" class="model.ProductBean" scope="page">
<jsp:setProperty name="bean" property="*" />
</jsp:useBean>


<%
	ProductDAO dao = new ProductDAO();
	int result = dao.setInsert(bean);
	
	if (result > 0){
	out.println("<script>");
	out.println("location.href='productList.jsp';");
	out.println("</script>");
	} else {
	out.println("<script>");
	out.println("alert('오류발생');");
	out.println("location.href='productForm.jsp';");
	out.println("</script>");
	}
 %>