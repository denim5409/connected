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
<h1>상품등록</h1>
<form name="form" method="post" action="productProc.jsp">
<table border="1">
	<tr>
		<td>상품카테고리</td>
		<td>
			<input type="radio" name="cate" value="가구">가구&nbsp;&nbsp;
			<input type="radio" name="cate" value="의류">의류&nbsp;&nbsp;
			<input type="radio" name="cate" value="컴퓨터">컴퓨터&nbsp;&nbsp;
			<input type="radio" name="cate" value="컴퓨터">가전
		</td>
	</tr>
	<tr>
		<td>상품명</td>
		<td><input type="text" name="pname"></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><input type="text" name="price"></td>
	</tr>
</table>
<input type="submit" value="확인">
</form>
</body>
</html>