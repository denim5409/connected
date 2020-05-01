package model;

import java.sql.*;

public class MemberDAO {//데이터베이스 저장역할

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void getConn() {
		try {
			//db연결
	 		String driver = "com.mysql.jdbc.Driver";
	 		String dbUrl = "jdbc:mysql://localhost:3306/site100";
	 		String dbId = "site100";
	 		String dbPw = "1234";

	 		Class.forName(driver);
	 		conn = DriverManager.getConnection(dbUrl, dbId, dbPw);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int setInsert(MemberBean bean) {
		int result = 0;
		getConn();
		try {
			//DB추가 		
	 		String sql = "insert into member values (?,?,?,?)";
	 		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
	 		pstmt.setString(2, bean.getPasswd());
	 		pstmt.setString(3, bean.getName());
	 		pstmt.setString(4, bean.getPhone());
	 		result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
}
