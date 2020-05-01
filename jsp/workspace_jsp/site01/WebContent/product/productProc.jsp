<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>
<%@ page import = "model.Db" %>

<%
	String cate = request.getParameter("cate");
	String pname = request.getParameter("pname");
	String temp = request.getParameter("price");
	int price = Integer.parseInt(temp);

	//데이터베이스
	Db db = new Db();
	Connection conn = db.dbConn();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result = 0;

	try{
		//DB추가 		
 		String sql = "insert into product values (?,?,?,?,now())";
 		pstmt = conn.prepareStatement(sql);
		pstmt.setNull(1, java.sql.Types.NULL);
 		pstmt.setString(2, cate);
 		pstmt.setString(3, pname);
 		pstmt.setInt(4, price);
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
		out.println("location.href='productList.jsp';");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('오류발생');");
		out.println("location.href='product.jsp';");
		out.println("</script>");
	} 	
	
%>