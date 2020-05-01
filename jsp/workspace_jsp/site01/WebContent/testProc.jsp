<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<%@page import="java.util.ArrayList"%>

<%
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd1");
	String name = request.getParameter("name");
	String year = request.getParameter("byear");
	String month = request.getParameter("bmonth");
	String day = request.getParameter("bday");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String[] arrayHobby = request.getParameterValues("hobby");
	if (month.length()==1){
		month = "0" + month;
	}
	if (day.length()==1){
		day = "0" + day;
	}
	
%>
 id : <%=id%><br>
 password : <%=pwd%><br>
 name : <%=name%><br>
 birthday : <%=year+"-"+month+"-"+day%><br>
 genger : 
 <%if (id=="M"){%>
	 남자
 <%} else {%>
	 여자
 <%}%><br>
  취미 : <%
	for (int i = 0; i < arrayHobby.length; i++){
		if (arrayHobby[i] != ""){%>
			<%=arrayHobby[i]%>&nbsp;&nbsp;
		<%}
	}%><br>

<%-- 
 <%
 String hobby1 = "";
 	for (String s : arrayHobby) {
		if (s.length() > 0) {
			hobby1 = hobby1 + "," + s;
		}
		out.println(s + "<br>");
	}

 	String hobby2 = "";
	for (int i = 0; i < arrayHobby.length; i++){
		if (arrayHobby[i].length() > 0) {
			hobby2 = hobby2 + "," + arrayHobby[i];
		}
		out.println(arrayHobby[i] + "<br>");
	}
%>
 --%>		

 email : <%=email%><br>
 phone :  <%=phone%><br>
 
 
 