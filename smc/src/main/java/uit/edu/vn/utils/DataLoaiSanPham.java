package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.LoaiSanPham;

public class DataLoaiSanPham {
	public List<LoaiSanPham> getDsLoaiSanPhamFromDb() throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<LoaiSanPham> dsLoaiSanPham = new ArrayList<LoaiSanPham>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "Select * from tbloaisanpham";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				String MaLoaiSanPham = rs.getString("MaLoaiSanPham");
				String TenLoaiSanPham = rs.getString("TenLoaiSanPham");
				String MoTa = rs.getString("Mota");
				int idNganhSanPham = rs.getInt("idNganhSanPham");
				
				LoaiSanPham lsp = new LoaiSanPham();
				lsp.setId(id);
				lsp.setMaLoaiSanPham(MaLoaiSanPham);
				lsp.setTenLoaiSanPham(TenLoaiSanPham);
				lsp.setMoTa(MoTa);
				lsp.setIdNganhSanPham(idNganhSanPham);
				dsLoaiSanPham.add(lsp);
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
		return dsLoaiSanPham;
	}
}
