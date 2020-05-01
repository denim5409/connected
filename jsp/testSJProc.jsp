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
	String name = request.getParameter("name");
	String temp1 = request.getParameter("kor");
	String temp2 = request.getParameter("eng");
	String temp3 = request.getParameter("mat");

	int kor = Integer.parseInt(temp1);
	int eng = Integer.parseInt(temp2);
	int mat = Integer.parseInt(temp3);
	
	//데이터베이스 저장
 	Connection conn = null;
	PreparedStatement pstmt = null;
 	ResultSet rs = null;
	int result = 0;

	try{
 		//dB연결
 		String driver = "com.mysql.jdbc.Driver";
 		String dbUrl = "jdbc:mysql://localhost:3306/exam";
 		String dbUser = "exam";
 		String dbPasswd = "1234";
 		Class.forName(driver);
 		conn = DriverManager.getConnection(dbUrl, dbUser, dbPasswd);
 		
		//DB추가 		
 		String sql = "insert into sungjuk values (?,?,?,?,?)";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setNull(1, java.sql.Types.NULL);
 		pstmt.setString(2, name);
 		pstmt.setInt(3, kor);
 		pstmt.setInt(4, eng);
 		pstmt.setInt(5, mat);
 		result = pstmt.executeUpdate();
		
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

	if (result > 0){
 		out.println("<script>");
 		out.println("location.href='testSJList.jsp';");
 		out.println("</script>");
 	} else {
 		out.println("<script>");
 		out.println("alert('오류발생');");
 		out.println("location.href='testSJ.jsp';");
 		out.println("</script>");
 	}
%>

</body>
</html>