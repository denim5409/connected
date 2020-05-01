<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>

<% 
	String cate = request.getParameter("cate");
	String pname = request.getParameter("pname");
	String temp = request.getParameter("price");
	int price = Integer.parseInt(temp);
	String company = request.getParameter("company");
	
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
 		String sql = "insert into product values (?,?,?,?,?,now())";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setNull(1, java.sql.Types.NULL);
 		pstmt.setString(2, cate);
 		pstmt.setString(3, pname);
 		pstmt.setInt(4, price);
 		pstmt.setString(5, company);
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
 		out.println("location.href='list.jsp';");
 		out.println("</script>");
 	} else {
 		out.println("<script>");
 		out.println("alert('오류발생');");
 		out.println("location.href='chuga.jsp';");
 		out.println("</script>");
 	}
%>