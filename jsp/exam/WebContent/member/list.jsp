<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "model.MemberDAO" %>
<%@ page import = "model.MemberBean" %>    
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberBean> arrayList = dao.getSelectAll();

	for (int i = 0; i < arrayList.size(); i++) {
		MemberBean bean = arrayList.get(i);
		out.println("No : " + bean.getNo());
		%>&nbsp;&nbsp;<%
		out.println("ID : " + bean.getId());
		%>&nbsp;&nbsp;<%
		out.println("Name : " + bean.getName());
		%><br><%
	}
	
%>


</body>
</html>