<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>

<%
	String ban = request.getParameter("ban");
	String boo = request.getParameter("boo");
	String ceo = request.getParameter("ceo");
/* 
	out.println("ban : " + ban + "<br>");
	out.println("boo : " + boo + "<br>");
	out.println("ceo : " + ceo + "<br>");
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
 		String sql = "insert into boss values (?,?,?,?)";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setNull(1, java.sql.Types.NULL);//자리수를 맞추기위해 적는다.
 		pstmt.setString(2, ban);
 		pstmt.setString(3, boo);
 		pstmt.setString(4, ceo);
 		result = pstmt.executeUpdate();

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
 		out.println("location.href='exFormList.jsp';");
 		out.println("</script>");
 	} else {
 		out.println("<script>");
 		out.println("alert('오류발생');");
 		out.println("location.href='exForm.jsp';");
 		out.println("</script>");
 		
 	}

%>
