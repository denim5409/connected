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

<% 
	String name = request.getParameter("name");
	String temp1 = request.getParameter("kor");
	int kor = Integer.parseInt(temp1);
	String temp2 = request.getParameter("eng");
	int eng = Integer.parseInt(temp2);
	String temp3 = request.getParameter("mat");
	int mat = Integer.parseInt(temp3);

	int tot = kor + eng + mat;
	double avg = (double)(tot)/3;
%>
<br><br>

이름 : <%=name %><br>
국어 : <%=kor %><br>
영어 : <%=eng %><br>
수학 : <%=mat %><br>
총점 : <%=tot %><br>
평균 : <%=avg %><br>

</body>
</html>