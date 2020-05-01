package model;

import java.sql.*;
import java.util.ArrayList;

public class MemberDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public void getConn() {
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String dbUrl = "jdbc:oracle:thin:@localhost:1521/xe";
			String dbId = "exam";
			String dbPasswd = "1234";

			Class.forName(driver);
			conn = DriverManager.getConnection(dbUrl, dbId, dbPasswd);
			System.out.println("-- 오라클 접속 성공 -- ");
		} catch (Exception e) {
			System.out.println("-- 오라클 접속 에러 -- ");
			e.printStackTrace();
		}
	}

	public int setInsert(MemberBean bean) {
		int result = 0;
		getConn();
		try {
			String sql = "insert into member values (seq_no.NEXTVAL, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getName());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<MemberBean> getSelectAll() {
		ArrayList<MemberBean> arrayList = new ArrayList<>();
		getConn();
		try {
			String sql = "select * from member order by no";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setNo(rs.getInt("no"));
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				arrayList.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return arrayList;
	}



}
