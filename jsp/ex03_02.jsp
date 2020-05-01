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
	String k;
%>

<%
	for (i = 2; i<10; i++){
		if (i%2==0){
			k = "<td  bgcolor=\"red\">";
		} else {
			k = "<td  bgcolor=\"yellow\">";
		}%>
			<%=i%>단<br>
			<table border=1; width=300;>
			<%for (j=1; j<10; j++){%>
					<tr style="text-align:center";>
						<%=k + i%></td>
						<%=k%>*</td>
						<%=k + j%></td>
						<%=k%>=</td>
						<%=k + (i * j)%></td>
					</tr>
			<%}%>			
			</table><br>
	<%}%>

</body>
</html>