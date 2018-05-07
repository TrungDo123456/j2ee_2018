package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.CuaHang;
import uit.edu.vn.models.SanPham;

public class DataCuaHang {
	public List<CuaHang> getLstCuaHangFromDb() throws SQLException
	{
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
				String TenCuaHang = rs.getString("TenCuaHang");
				String DiaChiCuaHang = rs.getString("DiaChiCuaHang");
				String NguoiQuanLy = rs.getString("NguoiQuanLy");
				String SoDienThoai = rs.getString("SoDienThoai");
				String TenCuaHangTrenBill = rs.getString("TenCuaHangTrenBill");
				String ThongTinLienHeTrenBill = rs.getString("ThongTinLienHeTrenBill");
				String LogoTrenBill = rs.getString("LogoTrenBill");
				CuaHang cuahang = new CuaHang(id, TenCuaHang, DiaChiCuaHang, NguoiQuanLy, SoDienThoai, TenCuaHangTrenBill, ThongTinLienHeTrenBill,
						LogoTrenBill);
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
