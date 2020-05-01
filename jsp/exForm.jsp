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

<Form name="exForm" method="post" action="exFormProc.jsp">

<table border="1" width="600">
	<tr>
		<td>반장</td>
		<td>
			<input type="radio" name="ban" value="홍길동">홍길동&nbsp;&nbsp;
			<input type="radio" name="ban" value="김철수">김철수&nbsp;&nbsp;
			<input type="radio" name="ban" value="이영희">이영희
		</td>
		
	</tr>
	<tr>
		<td>부반장</td>
		<td>
			<input type="radio" name="boo" value="이승엽">이승엽&nbsp;&nbsp;
			<input type="radio" name="boo" value="박찬호">박찬호&nbsp;&nbsp;
			<input type="radio" name="boo" value="김병현">김병현
		</td>
	</tr>
	<tr>
		<td>회장</td>
		<td>
			<input type="radio" name="ceo" value="이문세">이문세&nbsp;&nbsp;
			<input type="radio" name="ceo" value="안성기">안성기&nbsp;&nbsp;
			<input type="radio" name="ceo" value="이연복">이연복
		</td>
	</tr>
</table>

<input type="submit" value="확인">
</Form>

</body>
</html>