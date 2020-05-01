<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "model.ProductBean" %>
<%@ page import = "model.ProductDAO" %>    
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String msg = "";
	ProductDAO dao = new ProductDAO();
	ArrayList<ProductBean> arrayList = dao.getSelectAll();
	for (int i = 0; i<arrayList.size(); i++){
		ProductBean bean = arrayList.get(i);
		msg += bean.getNo();
		msg += " / ";
		msg += bean.getCate();
		msg += " / ";
		msg += bean.getPname();
		msg += " / ";
		msg += bean.getPrice();
		msg += " / ";
		msg += bean.getWdate();
		msg += "<br>";
	}
	out.println(msg);
%>


</body>
</html>