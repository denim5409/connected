package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {

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

	public int setInsert(ProductBean bean) {
		int result = 0;
		getConn();
		try {
			String sql = "insert into sangpum values (s_no.NEXTVAL, ?, ?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getS_id());
			pstmt.setString(2, bean.getCate());
			pstmt.setString(3, bean.getSname());
			pstmt.setInt(4, bean.getPrice());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<ProductBean> getSelectAll() {
		ArrayList<ProductBean> arrayList = new ArrayList<>();
		getConn();
		try {
			String sql = "select * from sangpum order by no";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductBean bean = new ProductBean();
				bean.setNo(rs.getInt("no"));
				bean.setS_id(rs.getString("s_id"));
				bean.setCate(rs.getString("cate"));
				bean.setSname(rs.getString("sname"));
				bean.setPrice(rs.getInt("price"));
				arrayList.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return arrayList;
	}
}
