package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.NhaSanXuat;

public class DataNhaSanXuat {
	public List<NhaSanXuat> getListNhaSanXuatFromDb() throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<NhaSanXuat> lstNhaSanXuat = new ArrayList<NhaSanXuat>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbNhaSanXuat";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				String maNhaSanXuat = rs.getString("MaNhaSanXuat");
				String tenNhaSanXuat = rs.getString("TenNhaSanXuat");
				String diaChi = rs.getString("DiaChi");
				String ghiChu = rs.getString("GhiChu");
				NhaSanXuat nhasanxuat = new NhaSanXuat(id, maNhaSanXuat, tenNhaSanXuat, diaChi, ghiChu);
				lstNhaSanXuat.add(nhasanxuat);
			}
			con.close();
			rs.close();
			return lstNhaSanXuat;
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
		return lstNhaSanXuat;
	}
}
