<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import = "java.sql.*" %>

<% 
	String quest1 = request.getParameter("quest1");
	String quest2 = request.getParameter("quest2");
	String quest3 = request.getParameter("quest3");
	String quest4 = request.getParameter("quest4");
	String quest5 = request.getParameter("quest5");
	String ans1;
	String ans2;
	String ans3;
	String ans4;
	String ans5;
	String[] dab = {"5","4","2","3","1"};
	int tot = 0;	

		//항목별 정답 : 5, 4, 2, 3, 1
		if (quest1.equals(dab[0])){
			ans1 = "O";	 			
			tot += 20;
		} else {
			ans1 = "X";
		}

		if (quest2.equals(dab[1])){
			ans2 = "O";	 			
			tot += 20;
		} else {
			ans2 = "X";
		}

		if (quest3.equals(dab[2])){	
			ans3 = "O";	 			
			tot += 20;
		} else {
			ans3 = "X";
		}

		if (quest4.equals(dab[3])){
			ans4 = "O";	 			
			tot += 20;
		} else {
			ans4 = "X";
		}

		if (quest5.equals(dab[4])){
			ans5 = "O";	 			
			tot += 20;
		} else {
			ans5 = "X";
		}
	
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
 		String sql = "insert into sihum values (?,?,?,?,?,?,?,?,?,?,?,?,now())";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setNull(1, java.sql.Types.NULL);
 		pstmt.setString(2, quest1);
 		pstmt.setString(3, quest2);
 		pstmt.setString(4, quest3);
 		pstmt.setString(5, quest4);
 		pstmt.setString(6, quest5);
 		pstmt.setString(7, ans1);
 		pstmt.setString(8, ans2);
 		pstmt.setString(9, ans3);
 		pstmt.setString(10, ans4);
 		pstmt.setString(11, ans5);
 		pstmt.setInt(12, tot);
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
 		out.println("location.href='chugaList.jsp';");
 		out.println("</script>");
 	} else {
 		out.println("<script>");
 		out.println("alert('오류발생');");
 		out.println("location.href='chuga.jsp';");
 		out.println("</script>");
 	}
%>