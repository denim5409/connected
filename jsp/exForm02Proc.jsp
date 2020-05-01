<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>

<%
	String boss_1 = request.getParameter("boss_1");
	String boss_2 = request.getParameter("boss_2");
	String boss_3 = request.getParameter("boss_3");
	String boss_4 = request.getParameter("boss_4");
	String boss_5 = request.getParameter("boss_5");

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
 		String sql = "insert into boss_sub values (?,?,?,?,?,?)";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setNull(1, java.sql.Types.NULL);//자리수를 맞추기위해 적는다.
 		pstmt.setString(2, boss_1);
 		pstmt.setString(3, boss_2);
 		pstmt.setString(4, boss_3);
 		pstmt.setString(5, boss_4);
 		pstmt.setString(6, boss_5);
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
 		out.println("location.href='exForm02List.jsp';");
 		out.println("</script>");
 	} else {
 		out.println("<script>");
 		out.println("alert('오류발생');");
 		out.println("location.href='exForm02.jsp';");
 		out.println("</script>");
 	}

%>