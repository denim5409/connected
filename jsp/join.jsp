<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center><img src="C:\cdw\workspace_jsp\site01\WebContent\daum.png"
	 alt="다음이미지"></center>
	<br>
	<form name="form1" method="post" action="testProc.jsp">
		<table align="center">
			<tr height="40">
				<td width="200">아이디</td>
				<td colspan=3 width="400">
				<input type="text" name = "id" size="40"></td>
			</tr>
			<tr height="40">
				<td>비밀번호</td>
				<td colspan=3><input type="password" name = "pwd1" size="41"></td>
			</tr>
			<tr height="40">
				<td>비밀번호 재확인</td>
				<td colspan=3><input type="password" name = "pwd2" size="41"></td>
			</tr>
			<tr height="40">
				<td>이름</td>
				<td colspan=3><input type="text" name = "name" size="40"></td>
			</tr>
			<tr height="40">
				<td>생년월일</td>
				<td colspan=3 align=justify>
					<select name="byear">
						<option value=0>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
						
						<%LocalDateTime myDateObj = LocalDateTime.now();%>
						<%DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyyMMdd");%>
						<%String myDate = myDateObj.format(myFormatObj); %>						
						<%int date = Integer.parseInt(myDate.substring(0,4));%>
						
						<%for (int i = 1950; i <= date; i++) {%>
							<% if (i == 1980) {%>
							<option value=<%=i%> selected><%=i%></option>
							<%} else {%>
							<option value=<%=i%>><%=i%></option>
							<%}%>
						<%}%>
					</select>&nbsp;&nbsp;
					<select name="bmonth">
						<option value=0>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<%for (int i = 1; i <= 12; i++) {%>
							<% if (i == 1) {%>
							<option value=<%=i%> selected><%=i%></option>
							<%} else {%>
							<option value=<%=i%>><%=i%></option>
							<%}%>
						<%}%>
					</select>&nbsp;&nbsp;
					<select name="bday">
						<option value=0>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<%for (int i = 1; i <= 31; i++) {%>
							<% if (i == 1) {%>
							<option value=<%=i%> selected><%=i%></option>
							<%} else {%>
							<option value=<%=i%>><%=i%></option>
							<%}%>
						<%}%>
					</select>&nbsp;&nbsp;
				</td>
			</tr>
			<tr height="40">
				<td>성별</td>
				<td colspan=3 align="center">
					<input Type="radio" name="gender" value="M" checked>남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input Type="radio" name="gender" value="F">여자
				</td>
			</tr>
			<tr height="40">
				<td>취미</td>
				<td colspan=3>
					<input Type="checkbox" name="hobby" value="낚시">낚시&nbsp;&nbsp;
					<input Type="checkbox" name="hobby" value="바둑">바둑&nbsp;&nbsp;
					<input Type="checkbox" name="hobby" value="골프">골프&nbsp;&nbsp;
					<input Type="checkbox" name="hobby" value="독서">독서&nbsp;&nbsp;
					<input Type="checkbox" name="hobby" value="영화감상">영화감상
				</td>
			</tr>
			<tr height="40">
				<td>본인 확인 이메일(선택)</td>
				<td colspan=3><input type="email" name = "email" size="40"></td>
			</tr>
			<tr height="40">
				<td>휴대전화(숫자만)</td>
				<td colspan=3><input type="text" name = "phone" size="40">
				</td>
			</tr>
			<tr height="40">
				<td colspan=4 align="center"><input type="button" value="가입하기" 
				onclick="join();">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>

<script>
function join(){

	var frm = document.form1;
	
	if (frm.id.value == ""){
		alert("아이디를 입력하세요");
		frm.id.focus();
		return false;
	}
	
	if (frm.pwd1.value == ""){
		alert("비밀번호를 입력하세요");
		frm.pwd1.focus();
		return false;
	}

	if (frm.pwd2.value == ""){
		alert("비밀번호를 다시한번 입력하세요");
		frm.pwd2.focus();
		return false;
	}

	if (frm.pwd1.value != frm.pwd2.value){
		alert("비밀번호가 일치하지 않습니다. 다시입 력하세요.");
		frm.pwd1.value = "";
		frm.pwd2.value = "";
		frm.pwd1.select();
		frm.pwd1.focus();
		return false;
	}

	if (frm.name.value == ""){
		alert("이름을 입력하세요.");
		frm.name.focus();
		return false;
	}

	if (frm.byear.value == ""){
		alert("년도를 선택하세요.");
		frm.byear.focus();
		return false;
	}

	if (frm.byear.value == "0"){
		alert("년도를 선택하세요.");
		frm.byear.focus();
		return false;
	}

	if (frm.bmonth.value == ""){
		alert("월을 선택하세요.");
		frm.bmonth.focus();
		return false;
	}

	if (frm.bmonth.value == "0"){
		alert("월을 선택하세요.");
		frm.bmonth.focus();
		return false;
	}

	if (frm.bday.value == ""){
		alert("일을 선택하세요.");
		frm.bday.focus();
		return false;
	}

	if (frm.bday.value == "0"){
		alert("일을 선택하세요.");
		frm.bday.focus();
		return false;
	}

	if (frm.phone.value%1 != 0){
		alert("숫자만 입력하세요.");
		frm.phone.focus();
		return false;
	}
	
/* 	String pNum = frm.phone.length();
	
	if (eval(frm.phone.length()) > 11){
		alert("전화번호 자리수가 많습니다.(최대11자리)");
		frm.phone.focus();
		return false;

	if (eval(frm.phone.length()) < 10)
		alert("전화번호 자리수가 적습니다.(최소10자리)");
		frm.phone.focus();
		return false;
	}
 */ 
	if (confirm('가입하시겠습니까?')){
		form1.submit();
	}
}
</script>


