<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
	
<%!
	int a = 100;
	int b = 200;

	public int sum(){
		int a=10, b=20,c;
		c=a+b;
		return c;
	}
%>
	a의 값은 : <%=a %> <!-- 스크립트릿 -->
<br>
<%
	out.println("a의 값 : " + a + "<br>");
	out.println("a의 값 : " + a + "<br>");
	
	int result = sum();
%>
sum()의 결과 : <%=result %>
<br>
<%
	out.println("result의 값 : " + result);
%>


</body>
</html>