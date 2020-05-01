<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String name="홍길동";
	int kor = 81;
	int eng = 82;
	int mat = 83;
	int sci = 84;
	int his = 85;
	int tot;
	double avg;
	String grade;
	String font_1;
	String font_2;
	
%>

<% tot = kor + eng + mat + sci + his;
	avg = (double)(tot)/5;

	if (avg>=90.0) {
		grade = "수";
		font_1 = "<font style='color:blue'><b>";
		font_2 = "</b></font>";
	} else 	if (avg>=80.0) {
		grade = "우";
		font_1 = "<font style='color:blue'><b>";
		font_2 = "</b></font>";
	} else 	if (avg>=70.0) {
		grade = "미";
		font_1 = "<b>";
		font_2 = "</b>";
	} else 	if (avg>=60.0) {
		grade = "양";
		font_1 = "<b>";
		font_2 = "</b>";
	} else {
		grade = "가";
		font_1 = "<font style='color:red'><b>";
		font_2 = "</b></font>";
	}
%>
<br><br>
<%-- <%
	out.println("======================================" + "<br>");
	out.println("이름&nbsp;&nbsp;국어&nbsp;&nbsp;영어&nbsp;&nbsp;수학&nbsp;&nbsp;과학&nbsp;&nbsp;"+
	"역사&nbsp;&nbsp;총점&nbsp;&nbsp;평균&nbsp;&nbsp;등급" + "<br>");
	out.println("======================================" + "<br>");
	out.println(name+"&nbsp;&nbsp;"+kor+"&nbsp;&nbsp;"+eng+"&nbsp;&nbsp;"+mat+"&nbsp;&nbsp;"+sci+
	"&nbsp;&nbsp;"+his+"&nbsp;&nbsp;"+tot+"&nbsp;&nbsp;"+avg+"&nbsp;&nbsp;"+grade + "<br>");
	out.println("======================================" + "<br>");
%>
 --%>
<table border=1 solid black; width=800;>
	<tr style="text-align:center";>
		<td>이름</td>
		<td>국어</td>
		<td>영어</td>
		<td>수학</td>
		<td>과학</td>
		<td>역사</td>
		<td>총점</td>
		<td>평균</td>
		<td>등급</td>
	</tr>
	<tr style="text-align:center";>
		<td><%=name%></td>
		<td><%=kor%></td>
		<td><%=eng%></td>
		<td><%=mat%></td>
		<td><%=sci%></td>
		<td><%=his%></td>
		<td><%=tot%></td>
		<td><%=avg%></td>
		<td><%=font_1 + grade + font_2%></td>
	</tr>
</table>



</body>
</html>