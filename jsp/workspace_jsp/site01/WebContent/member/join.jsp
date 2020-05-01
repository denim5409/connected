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
<h1>회원가입</h1>

<form name="form" method="post" action="joinProc.jsp">
<table border="1" width="600">
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="text" name="passwd"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone"></td>
	</tr>
	<tr>
		<td>직업</td>
		<td>
		<input type="radio" name="job" value="공무원">공무원&nbsp;&nbsp;
		<input type="radio" name="job" value="개발자">개발자&nbsp;&nbsp;
		<input type="radio" name="job" value="군인">군인&nbsp;&nbsp;
		<input type="radio" name="job" value="변호사">변호사
		</td>
	</tr>
</table>
<input type="submit" value="확인">
</form>

</body>
</html>