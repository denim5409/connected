<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<%@ page import = "model.Db" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원목록</h1>
아이디 / 비밀번호 / 이름 / 전화번호 / 직업 / 가입일<br>
<hr>

<%
	//데이터베이스
	Db db = new Db();
 	Connection conn = db.dbConn();
	PreparedStatement pstmt = null;
 	ResultSet rs = null;
	int result = 0;

	try{
 		String msg = "";
 		//목록
		String sql = "select * from member";
 		pstmt = conn.prepareStatement(sql);
 		rs = pstmt.executeQuery();
 		while (rs.next()){
 			
  			msg += rs.getString("id");
 			msg += " / ";
 			msg += rs.getString("passwd");
 			msg += " / ";
 			msg += rs.getString("name");
 			msg += " / ";
 			msg += rs.getString("phone");
 			msg += " / ";
 			msg += rs.getString("job");
 			msg += " / ";
 			msg += rs.getString("wdate");
 			msg += "<br>";
 		}
			out.println(msg);

	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
 			if (rs != null) {rs.close();}
 			if (pstmt != null) {pstmt.close();}
 			if (conn != null) {conn.close();}
		} catch(Exception e){
			e.printStackTrace();
		}
	}

%>
</body>
</html>