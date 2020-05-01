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

<%
	Db db = new Db();
	Connection conn = db.dbConn();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
 		//목록
		String sql = "select * from sungjuk";
 		pstmt = conn.prepareStatement(sql);
 		rs = pstmt.executeQuery();
%>
<h1>성적목록</h1>
문제1 정답 : 1<br>
문제2 정답 : 2<br>
문제3 정답 : 3<br>
문제4 정답 : 4<br>
문제5 정답 : 3<br><br>
<table border="1" width="800">
	<tr>
		<td>순번</td>
		<td>이름</td>
		<td>시험명</td>
		<td>문제1</td>
		<td>문제2</td>
		<td>문제3</td>
		<td>문제4</td>
		<td>문제5</td>
		<td>점수</td>
		<td>시험일</td>
	</tr>
<% 
	while (rs.next()) { %>
	<tr>
		<td><%=rs.getInt("no") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("sname") %></td>
		<td><%=rs.getString("mun_1") %></td>
		<td><%=rs.getString("mun_2") %></td>
		<td><%=rs.getString("mun_3") %></td>
		<td><%=rs.getString("mun_4") %></td>
		<td><%=rs.getString("mun_5") %></td>
		<td><%=rs.getInt("jumsu") %></td>
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