<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>

<%
	String test1 = request.getParameter("test1");
	String test2 = request.getParameter("test2");
	String test3 = request.getParameter("test3");
	String test4 = request.getParameter("test4");
	String test5 = request.getParameter("test5");
	int tot = 0;
	
	String[] dab = {"5","4","3","2","1"};
	String ans1;
	String ans2;
	String ans3;
	String ans4;
	String ans5;

	if (test1.equals(dab[0])){
		ans1 = "O";
		tot += 20;
	} else {
		ans1 = "X";
	}

	if (test2.equals(dab[1])){
		ans2 = "O";
		tot += 20;
	} else {
		ans2 = "X";
	}

	if (test3.equals(dab[2])){
		ans3 = "O";
		tot += 20;
	} else {
		ans3 = "X";
	}

	if (test4.equals(dab[3])){
		ans4 = "O";
		tot += 20;
	} else {
		ans4 = "X";
	}

	if (test5.equals(dab[4])){
		ans5 = "O";
		tot += 20;
	} else {
		ans5 = "X";
	}
	
	//데이터베이스저장
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result = 0;
	
	try {
		//db연결
 		String driver = "com.mysql.jdbc.Driver";
 		String dbUrl = "jdbc:mysql://localhost:3306/exam";
 		String dbUser = "exam";
 		String dbPasswd = "1234";
 		Class.forName(driver);
 		conn = DriverManager.getConnection(dbUrl, dbUser, dbPasswd);
		
		//db추가
		String sql = "insert into test01 values (?,?,?,?,?,?,?,?,?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setNull(1, java.sql.Types.NULL);
		pstmt.setString(2, test1);
		pstmt.setString(3, test2);
		pstmt.setString(4, test3);
		pstmt.setString(5, test4);
		pstmt.setString(6, test5);
		pstmt.setString(7, ans1);
		pstmt.setString(8, ans2);
		pstmt.setString(9, ans3);
		pstmt.setString(10, ans4);
		pstmt.setString(11, ans5);
		pstmt.setInt(12, tot);
		result = pstmt.executeUpdate();
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
	if (result > 0) {
		out.println("<script>");
		out.println("location.href='test01List.jsp';");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('오류발생');");
		out.println("location.href='test01.jsp';");
		out.println("</script>");
	}
%>