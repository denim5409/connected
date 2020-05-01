<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<Form name="form" method="post" action="test01Proc.jsp">

<table border = "1" width="600">
	<tr>
		<td>번호</td>
		<td>보기</td>
	</tr>
	
	<% for (int i = 1; i<=5; i++) {%>
	<tr>
		<td><%=i %></td>
		<td>
		<input type="radio" name="test<%=i %>" value="1">1&nbsp;&nbsp;
		<input type="radio" name="test<%=i %>" value="2">2&nbsp;&nbsp;
		<input type="radio" name="test<%=i %>" value="3">3&nbsp;&nbsp;
		<input type="radio" name="test<%=i %>" value="4">4&nbsp;&nbsp;
		<input type="radio" name="test<%=i %>" value="5">5&nbsp;&nbsp;
		</td>
	</tr>
	<%} %>
</table>
<input type="submit" value="확인">
</Form>


</body>
</html>