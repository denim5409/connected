<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "model.MemberBean" %>
<%@ page import = "model.MemberDAO" %>

<jsp:useBean id="bean" class="model.MemberBean" scope="page">
<jsp:setProperty name="bean" property="*" />
</jsp:useBean>

<%
/* 
	out.println("bean.getId() : " + bean.getId() + "<br>");
	out.println("bean.getPasswd() : " + bean.getPasswd() + "<br>");
	out.println("bean.getPasswdChk() : " + bean.getPasswdChk() + "<br>");
	out.println("bean.getName() : " + bean.getName() + "<br>");
	out.println("bean.getPhone() : " + bean.getPhone() + "<br>");
 */

 	MemberDAO dao = new MemberDAO();
 	int result = dao.setInsert(bean);
 	
 	if (result > 0){
		out.println("<script>");
		out.println("location.href='joinList.jsp';");
		out.println("</script>");
 	} else {
		out.println("<script>");
		out.println("alert('오류발생');");
		out.println("location.href='join.jsp';");
		out.println("</script>");
 	}
 
 
%>
