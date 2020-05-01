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
		String sql = "select * from sihum";
 		pstmt = conn.prepareStatement(sql);
 		rs = pstmt.executeQuery();
		
 		%>
 		
<table border="1" width="900">
	<tr align="center">
		<td width="60">No</td>
		<td width="60">1번입력(답:5)</td>
		<td width="60">2번입력(답:4)</td>
		<td width="60">3번입력(답:2)</td>
		<td width="60">4번입력(답:3)</td>
		<td width="60">5번입력(답:1)</td>
		<td width="60">1번결과</td>
		<td width="60">2번결과</td>
		<td width="60">3번결과</td>
		<td width="60">4번결과</td>
		<td width="60">5번결과</td>
		<td width="60">점수</td>
		<td>입력시간</td>
	</tr>
<%
	while (rs.next()){%>
	
	<tr align="center">
		<td><%=rs.getInt("no") %></td>
		<td><%=rs.getString("quest1") %></td>
		<td><%=rs.getString("quest2") %></td>
		<td><%=rs.getString("quest3") %></td>
		<td><%=rs.getString("quest4") %></td>
		<td><%=rs.getString("quest5") %></td>
		<td><%=rs.getString("ans1") %></td>
		<td><%=rs.getString("ans2") %></td>
		<td><%=rs.getString("ans3") %></td>
		<td><%=rs.getString("ans4") %></td>
		<td><%=rs.getString("ans5") %></td>
		<td><%=rs.getInt("tot") %></td>
		<td><%=rs.getString("wdate") %></td>
	</tr>
	<%}

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
</table>
</body>
</html>