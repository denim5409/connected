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
<form name="sungjuk" method="post" action="testSJProc.jsp">
<h1>성적처리</h1>

<table border="1" width="600">
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>국어</td>
		<td><input type="text" name="kor"></td>
	</tr>
	<tr>
		<td>영어</td>
		<td><input type="text" name="eng"></td>
	</tr>
	<tr>
		<td>수학</td>
		<td><input type="text" name="mat"></td>
	</tr>
</table>

<input type="submit" value="확인">
</form>



</body>
</html>