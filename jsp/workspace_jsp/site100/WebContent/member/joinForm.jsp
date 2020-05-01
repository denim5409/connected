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
<form name="form" method="post" action="joinProc.jsp">

아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="text" name="passwd"><br>
비밀번호확인 : <input type="text" name="passwdChk"><br>
이름 : <input type="text" name="name"><br>
전화번호 : <input type="text" name="phone"><br>
<input type="submit" value="확인">

</form>


</body>
</html>