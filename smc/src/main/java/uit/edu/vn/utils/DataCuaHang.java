package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.CuaHang;

public class DataCuaHang {
	public List<CuaHang> getLstCuaHangFromDb() throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<CuaHang> lstCuaHang = new ArrayList<CuaHang>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbcuahang";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				String tenCuaHang = rs.getString("TenCuaHang");
				String diaChiCuaHang = rs.getString("DiaChiCuaHang");
				String nguoiQuanLy = rs.getString("NguoiQuanLy");
				String soDienThoai = rs.getString("SoDienThoai");
				CuaHang cuahang = new CuaHang(id, tenCuaHang, diaChiCuaHang, nguoiQuanLy, soDienThoai);
				lstCuaHang.add(cuahang);
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
		return lstCuaHang;
	}
}
