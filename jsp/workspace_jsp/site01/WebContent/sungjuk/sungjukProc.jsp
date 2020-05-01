<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>
<%@ page import = "model.Db" %>
<%
	String name = request.getParameter("name");
	String sname = request.getParameter("sname");
	String mun_1 = request.getParameter("mun_1");
	String mun_2 = request.getParameter("mun_2");
	String mun_3 = request.getParameter("mun_3");
	String mun_4 = request.getParameter("mun_4");
	String mun_5 = request.getParameter("mun_5");
	int jumsu = 0;

	String[] jungdab = {"1","2","3","4","3"};

	if (mun_1.equals(jungdab[0])){
		mun_1 += " (O)";
		jumsu += 20;
	} else {
		mun_1 += " (X)";
	}

	if (mun_2.equals(jungdab[1])){
		mun_2 += " (O)";
		jumsu += 20;
	} else {
		mun_2 += " (X)";
	}

	if (mun_3.equals(jungdab[2])){
		mun_3 += " (O)";
		jumsu += 20;
	} else {
		mun_3 += " (X)";
	}

	if (mun_4.equals(jungdab[3])){
		mun_4 += " (O)";
		jumsu += 20;
	} else {
		mun_4 += " (X)";
	}

	if (mun_5.equals(jungdab[4])){
		mun_5 += " (O)";
		jumsu += 20;
	} else {
		mun_5 += " (X)";
	}

	//데이터베이스
	Db db = new Db();
	Connection conn = db.dbConn();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result = 0;
	
	try {
		
		//db추가
		String sql = "insert into sungjuk values (?,?,?,?,?,?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setNull(1, java.sql.Types.NULL);
		pstmt.setString(2, name);
		pstmt.setString(3, sname);
		pstmt.setString(4, mun_1);
		pstmt.setString(5, mun_2);
		pstmt.setString(6, mun_3);
		pstmt.setString(7, mun_4);
		pstmt.setString(8, mun_5);
		pstmt.setInt(9, jumsu);
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
		out.println("location.href='sungjukList.jsp';");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('오류발생');");
		out.println("location.href='sungjuk.jsp';");
		out.println("</script>");
	}	

%>