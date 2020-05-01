<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>
<%@ page import = "model.Db" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상품목록</h1>
순번 / 카테고리 / 상품명 / 가격 / 등록일<br>
<hr>

<%
	//데이터베이스
	Db db = new Db();
	Connection conn = db.dbConn();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result = 0;

	try{
			//dB연결
	 		String msg = "";
	 		//목록
			String sql = "select * from product";
	 		pstmt = conn.prepareStatement(sql);
	 		rs = pstmt.executeQuery();
	 		while (rs.next()){
	 			
	  			msg += rs.getInt("no");
	 			msg += " / ";
	 			msg += rs.getString("cate");
	 			msg += " / ";
	 			msg += rs.getString("pname");
	 			msg += " / ";
	 			msg += rs.getInt("price");
	 			msg += " / ";
	 			msg += rs.getString("wdate");
	 			msg += "<br>";
	 		}
				out.println(msg);
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