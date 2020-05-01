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
			//db연결
	 		String driver = "com.mysql.jdbc.Driver";
	 		String dbUrl = "jdbc:mysql://localhost:3306/sihum";
	 		String dbId = "sihum";
	 		String dbPw = "1234";

	 		Class.forName(driver);
	 		conn = DriverManager.getConnection(dbUrl, dbId, dbPw);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int setInsert(ProductBean bean) {
		int result = 0;
		getConn();
		try {
			//DB추가 		
	 		String sql = "insert into product values (?,?,?,?,now())";
	 		pstmt = conn.prepareStatement(sql);
			pstmt.setNull(1, java.sql.Types.NULL);
	 		pstmt.setString(2, bean.getCate());
	 		pstmt.setString(3, bean.getPname());
	 		pstmt.setInt(4, bean.getPrice());
	 		result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<ProductBean> getSelectAll() {
		ArrayList<ProductBean> arrayList = new ArrayList<ProductBean>();
		getConn();
		try {
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				ProductBean bean = new ProductBean();
				bean.setNo(rs.getInt("no"));
				bean.setCate(rs.getString("cate"));
				bean.setPname(rs.getString("pname"));
				bean.setPrice(rs.getInt("price"));
				bean.setWdate(rs.getString("wdate"));
				arrayList.add(bean);					
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return arrayList;
}

}
