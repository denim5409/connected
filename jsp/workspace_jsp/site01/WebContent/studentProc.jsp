<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	int sci = Integer.parseInt(request.getParameter("sci"));
	int his = Integer.parseInt(request.getParameter("his"));
	
	int tot = kor+eng+mat+sci+his;
	double avg = (double)(tot)/3;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
	<table border="1" cellpadding="0" cellspacing="0" align="center">
		<tr align="center" height="50">
			<td width="80">이름</td>
			<td width="80">국어</td>
			<td width="80">영어</td>
			<td width="80">수학</td>
			<td width="80">과학</td>
			<td width="80">역사</td>
			<td width="80">총점</td>
			<td width="80">평균</td>
		</tr>
		<tr align="center" height="50">
			<td><%=name%></td>
			<td><%=kor%></td>
			<td><%=eng%></td>
			<td><%=mat%></td>
			<td><%=sci%></td>
			<td><%=his%></td>
			<td><%=tot%></td>
			<td><%=avg%></td>
		</tr>
	</table>
</body>
</html>