<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form1" method="post" action="studentProc.jsp">
		<table align="center" border="1" cellpadding="0" cellspacing="0" width="300">
			<tr height="50" align="center">
				<td width="100">이름 : </td>
				<td><input type="text" name="name"></td>				
			</tr>
			<tr height="50" align="center">
				<td width="100">국어 : </td>
				<td><input type="text" name="kor"></td>				
			</tr>
			<tr height="50" align="center">
				<td width="100">영어 : </td>
				<td><input type="text" name="eng"></td>				
			</tr>
			<tr height="50" align="center">
				<td width="100">수학 : </td>
				<td><input type="text" name="mat"></td>				
			</tr>
			<tr height="50" align="center">
				<td width="100">과학 : </td>
				<td><input type="text" name="sci"></td>				
			</tr>
			<tr height="50" align="center">
				<td width="100">역사 : </td>
				<td><input type="text" name="his"></td>				
			</tr>
			<tr height="50" align="center">
				<td colspan = 2><input type="button" value="입력하기" onclick="join();"></td>				
			</tr>
		</table>
	</form>
</body>
</html>

<script>
function join(){

	var frm = document.form1;
	
 	if (frm.name.value == ""){
		alert('이름을 입력하세요.');
		frm.name.focus();
		return false;
	}
	
	if (frm.kor.value == ""){
		alert("점수를 입력하세요.");
		frm.kor.focus();
		return false;
	}
	else if (isNaN(frm.kor.value) == true){
		alert("숫자만 가능합니다.");
		frm.kor.value = "";
		frm.kor.focus();
		return false;
	}
	
	if (frm.eng.value == ""){
		alert("점수를 입력하세요.");
		frm.eng.focus();
		return false;
	}
	else if (isNaN(frm.eng.value) == true){
		alert("숫자만 가능합니다.");
		frm.eng.value = "";
		frm.eng.focus();
		return false;
		}

	if (frm.mat.value == ""){
		alert("점수를 입력하세요.");
		frm.mat.focus();
		return false;
	}
	else if (isNaN(frm.mat.value) == true){
		alert("숫자만 가능합니다.");
		frm.mat.value = "";
		frm.mat.focus();
		return false;
		}

	if (frm.sci.value == ""){
		alert("점수를 입력하세요.");
		frm.sci.focus();
		return false;
	}
	else if (isNaN(frm.sci.value) == true){
		alert("숫자만 가능합니다.");
		frm.sci.value = "";
		frm.sci.focus();
		return false;
		}

	if (frm.his.value == ""){
		alert("점수를 입력하세요.");
		frm.his.focus();
		return false;
	}
	else if (isNaN(frm.his.value) == true){
		alert("숫자만 가능합니다.");
		frm.his.value = "";
		frm.his.focus();
		return false;
		}

	if (confirm('입력하시겠습니까')){
		form1.submit();
	}
}
</script>


