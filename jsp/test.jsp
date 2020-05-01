<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="joinForm">
	<table border="1" width="300" cellpadding="0" cellspacing="0">
		<tr>
			<td>아이디 : </td>
			<td><input type="text" name="id"></td>
		</tr>			
		<tr>
			<td colspan="2" align="center">
			<input type="button" value="가입하기" onclick="join();">
			</td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="pwd"></td>
		</tr>


	</table>
	</form>
</body>
</html>
<script>
function join(){
		var frm = document.joinForm;
			if (frm.id.value == ""){
				alert("아이디를 입력하세요");
				return false;
			}
		}
</script>