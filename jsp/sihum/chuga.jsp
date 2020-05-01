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
<Form name="form" method="post" action="chugaProc.jsp">

<% for (int i = 1; i<=5; i++) { %>

<%=i %>번문제 : <br>
	
	<% for (int j = 1; j<=5; j++) { %>
	
		<input type="radio" name="quest<%=i %>" value="<%=j %>"><%=j %>&nbsp;&nbsp;
		
		<%}%>
		<br><br>
	<%}
	%>

<input type="submit" value="확인">
</body>
</html>