<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int i;
	int j;
%>

<%
	for (i=2; i<10; i++){%>
		<%=i%>단<br>
		<table border=1; width=300;>
		<%for (j=1; j<10; j++){%>
				<tr style="text-align:center";>
					<td><%=i%></td>
					<td>*</td>
					<td><%=j%></td>
					<td>=</td>
					<td><%=i * j%></td>
				</tr>
		<%}%>			
		</table><br>
	<%}%>

</body>
</html>