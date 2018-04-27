package uit.edu.vn.actions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.SanPham;
import uit.edu.vn.utils.ConnectData;

public class SanPhamAction {
	public List<SanPham> getSanPham() throws SQLException {
		List lstSanPham = new ArrayList<SanPham>();
		Statement st = null;
		ResultSet rs = null;
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbsanpham";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int CodeSanPham = rs.getInt("CodeSanPham");
				String TenSanPham = rs.getString("TenSanPham");
				String DonVi = rs.getString("DonVi");
				String MoTa = rs.getString("MoTa");
				int idLoaiSanPham = rs.getInt("idLoaiSanPham");
				String HinhAnh = rs.getString("HinhAnh");
				int idNhaSanXuat = rs.getInt("idNhaSanXuat");
				SanPham sanpham = new SanPham(id, CodeSanPham, TenSanPham, DonVi, MoTa, idLoaiSanPham, HinhAnh,
						idNhaSanXuat);
				lstSanPham.add(sanpham);

			}
			con.close();
			rs.close();
			return lstSanPham;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
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
	}
}
