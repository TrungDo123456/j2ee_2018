package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.SanPham;

public class DataSanPham {
	public List<SanPham> getDsSanPhamFromDb() throws SQLException
	{
		Statement st = null;
		ResultSet rs = null;
		List<SanPham> dsSanPham= new ArrayList<SanPham>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbSanPham";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int CodeSanPham = rs.getInt("CodeSanPham");
				String TenSanPham= rs.getString("TenSanPham");
				String DonVi = rs.getString("DonVi");
				String MoTa = rs.getString("MoTa");
				int idLoaiSanPham = rs.getInt("idLoaiSanPham");
				String HinhAnh = rs.getString("HinhAnh");
				int idNhaSanXuat = rs.getInt("idNhaSanXuat");
				SanPham sp = new SanPham(id, CodeSanPham, TenSanPham, DonVi, MoTa, idLoaiSanPham, HinhAnh, idNhaSanXuat);
				dsSanPham.add(sp);
			}
			con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
			if (st != null)
				try {
					st.close();
				} catch (Exception e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}
		}
		return dsSanPham;
	}
}
