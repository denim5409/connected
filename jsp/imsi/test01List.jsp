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
	//데이터베이스저장
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		//db연결
 		String driver = "com.mysql.jdbc.Driver";
 		String dbUrl = "jdbc:mysql://localhost:3306/exam";
 		String dbUser = "exam";
 		String dbPasswd = "1234";
 		Class.forName(driver);
 		conn = DriverManager.getConnection(dbUrl, dbUser, dbPasswd);
 		//목록
		String sql = "select * from test01";
 		pstmt = conn.prepareStatement(sql);
 		rs = pstmt.executeQuery();

%>

<table border = "1" width="800">
	<tr>
		<td>No</td>
		<td>1번입력</td>
		<td>2번입력</td>
		<td>3번입력</td>
		<td>4번입력</td>
		<td>5번입력</td>
		<td>1번결과</td>
		<td>2번결과</td>
		<td>3번결과</td>
		<td>4번결과</td>
		<td>5번결과</td>
		<td>총점</td>
		<td>입력날짜</td>
	</tr>
	
<% 
	while (rs.next()) { %>

	<tr>
		<td><%=rs.getInt("no") %></td>
		<td><%=rs.getString("test1") %></td>
		<td><%=rs.getString("test2") %></td>
		<td><%=rs.getString("test3") %></td>
		<td><%=rs.getString("test4") %></td>
		<td><%=rs.getString("test5") %></td>
		<td><%=rs.getString("ans1") %></td>
		<td><%=rs.getString("ans2") %></td>
		<td><%=rs.getString("ans3") %></td>
		<td><%=rs.getString("ans4") %></td>
		<td><%=rs.getString("ans5") %></td>
		<td><%=rs.getInt("tot") %></td>
		<td><%=rs.getString("wdate") %></td>
	</tr>

<%}
%>
</table>
<%
	} catch (Exception e) {
		e.printStackTrace();		
	} finally {
		try {
			if(rs != null) {rs.close();}
			if(pstmt != null) {pstmt.close();}
			if(conn != null) {conn.close();}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
%>
</body>
</html>