package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.NhaCungCap;

public class DataNhaCungCap {
	public List<NhaCungCap> getListNhaCungCapFromDb(int idcuahang) throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<NhaCungCap> lstNhaCungCap = new ArrayList<NhaCungCap>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbNhaCungCap where idCuaHang = " + idcuahang + "";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int idCuaHang = rs.getInt("idCuaHang");
				String codeNhaCungCap = rs.getString("CodeNhaCungCap");
				String tenNhaCungCap = rs.getString("TenNhaCungCap");
				String diaChi = rs.getString("DiaChi");
				String soDienThoai = rs.getString("SoDienThoai");
				NhaCungCap nhacungcap = new NhaCungCap(id, idCuaHang, codeNhaCungCap, tenNhaCungCap, diaChi,
						soDienThoai);
				lstNhaCungCap.add(nhacungcap);
			}
			con.close();
			rs.close();
			return lstNhaCungCap;
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
		return lstNhaCungCap;
	}
}
