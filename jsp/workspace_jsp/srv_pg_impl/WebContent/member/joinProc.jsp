<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>
<%@ page import = "model.Db" %>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String job = request.getParameter("job");

	//데이터베이스
	Db db = new Db();
	Connection conn = db.dbConn();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result = 0;

	try{
		//db추가
		String sql = "insert into member values (?,?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setString(4, phone);
		pstmt.setString(5, job);
		result = pstmt.executeUpdate();
	} catch(Exception e){
		e.printStackTrace();		
	}  finally {
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
		out.println("location.href='joinList.jsp';");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('오류발생');");
		out.println("location.href='join.jsp';");
		out.println("</script>");
	}	
%>



