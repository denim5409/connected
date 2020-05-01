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

<form name="form" method="post" action="layoutProc.jsp">
<h1>회원가입</h1>

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
		<td>email</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone"></td>
	</tr>

<!--
 	<tr>
		<td>나이</td>
		<td><input type="text" name="age"></td>
	</tr>
	<tr>
		<td>성별</td>
		<td>
		<input type="radio" name="gender" value="M">남자 
		<input type="radio" name="gender" value="F">여자
		</td>
	</tr>
 -->

 </table>

<input type="submit" value="확인">

</form>

</body>
</html>