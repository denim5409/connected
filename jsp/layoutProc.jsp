<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");

// 	String temp = request.getParameter("age");
//	int age = Integer.parseInt(temp);
//	String gender = request.getParameter("gender");
	
	
/*  	out.println("id : " + id + "<br>");	
	out.println("passwd : " + passwd + "<br>");	
	out.println("name : " + name + "<br>");	
	out.println("age : " + age + "<br>");	
 */
	//데이터베이스 저장
 	Connection conn = null;
	PreparedStatement pstmt = null;
 	ResultSet rs = null;
	int result = 0;
 	
 	try {
 		//dB연결
 		String driver = "com.mysql.jdbc.Driver";
 		String dbUrl = "jdbc:mysql://localhost:3306/exam";
 		String dbUser = "exam";
 		String dbPasswd = "1234";
 		Class.forName(driver);
 		conn = DriverManager.getConnection(dbUrl, dbUser, dbPasswd);
 		
		//DB추가 		
 		String sql = "insert into member2 values (?,?,?,?,?,?)";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setNull(1, java.sql.Types.NULL);//자리수를 맞추기위해 적는다.
 		pstmt.setString(2, id);
 		pstmt.setString(3, passwd);
 		pstmt.setString(4, name);
 		pstmt.setString(5, email);
 		pstmt.setString(6, phone);
 		result = pstmt.executeUpdate();
 		
 		//목록
 		
 		
 		//수정
 		
 		
 		//삭제
 		
 	} catch (Exception e) {
 		e.printStackTrace();
 	} finally {
 		try {
 			if (rs != null) {rs.close();}
 			if (pstmt != null) {pstmt.close();}
 			if (conn != null) {conn.close();}
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
 	}
 	
 	if (result > 0){
 		out.println("<script>");
 		out.println("location.href='layoutList.jsp';");
 		out.println("</script>");
 	} else {
 		out.println("<script>");
 		out.println("alert('오류발생');");
 		out.println("location.href='layout.jsp';");
 		out.println("</script>");
 		
 	}
%>



</body>
</html>