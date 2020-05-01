<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
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
 		
 		String msg = "";
 		//목록
		String sql = "select * from boss_sub";
 		pstmt = conn.prepareStatement(sql);
 		rs = pstmt.executeQuery();
 		while (rs.next()){
 			
  			msg += rs.getInt("no");
 			msg += " / ";
 			msg += rs.getString("boss_1");
 			msg += " / ";
 			msg += rs.getString("boss_2");
 			msg += " / ";
 			msg += rs.getString("boss_3");
 			msg += " / ";
 			msg += rs.getString("boss_4");
 			msg += " / ";
 			msg += rs.getString("boss_5");
 			msg += "<br>";

/*  			
 			out.println(rs.getInt("no") + " / " + rs.getString("boss_1") + " / " +
 					rs.getString("boss_2") + " / " + rs.getString("boss_3") + " / " + 
 					rs.getString("boss_4") + " / " + rs.getString("boss_5") + "<br>");

 */
 
%>
<%-- 
 	<%=rs.getInt("no") %> / <%=rs.getString("boss_1") %> / <%=rs.getString("boss_2") %> /
    <%=rs.getString("boss_3") %> / <%=rs.getString("boss_4") %> / <%=rs.getString("boss_5") %><br>

 --%>
 <%

 		}

		out.println(msg);
		
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

%>

</body>
</html>