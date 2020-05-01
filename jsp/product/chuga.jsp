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

<table border="1" width="600">
	<tr>
		<td>카테고리</td>
		<td>
		<input type="radio" name="cate" value="코트">코트&nbsp;&nbsp;
		<input type="radio" name="cate" value="니트">니트&nbsp;&nbsp;
		<input type="radio" name="cate" value="잠바">잠바&nbsp;&nbsp;
		<input type="radio" name="cate" value="바지">바지&nbsp;&nbsp;
		<input type="radio" name="cate" value="치마">치마&nbsp;&nbsp;
		<input type="radio" name="cate" value="모자">모자&nbsp;&nbsp;
		<input type="radio" name="cate" value="벨트">벨트&nbsp;&nbsp;
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
	<tr>
		<td>제조사</td>
		<td><input type="text" name="company"></td>
	</tr>
</table>

<input type="submit" value="확인">

</body>
</html>