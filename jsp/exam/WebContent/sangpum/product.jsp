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
<h1>상품입력</h1>

<form name = "DirForm" method="post" action="/sangpum/productProc.do">
카테고리 : 
<input type="radio" name="cate" value="가구">가구&nbsp;&nbsp;
<input type="radio" name="cate" value="가전">가전&nbsp;&nbsp;
<input type="radio" name="cate" value="컴퓨터">컴퓨터&nbsp;&nbsp;
<input type="radio" name="cate" value="의류">의류
<br><br>
상품명 : <input type="text" name="sname" value="">
<br><br>
가격 : <input type="text" name="price" value="">
<br><br>
<input type="submit" value="입력하기">
</form>
</body>
</html>