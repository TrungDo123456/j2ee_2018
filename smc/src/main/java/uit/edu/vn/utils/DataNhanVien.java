package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import uit.edu.vn.models.NhanVien;

public class DataNhanVien {
	public boolean ThemMoi()
	{
		System.out.println("Them Ok nha");
		return true;
	}
	public ArrayList<NhanVien> getLstNhanVienFromDb() throws SQLException {
		ArrayList<NhanVien> lstNhanVien = new ArrayList<NhanVien>();
		Statement st = null;
		ResultSet rs = null;
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbnhanvien";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				String TenNhanVien = rs.getString("TenNhanVien");
				String TenDangNhap = rs.getString("TenDangNhap");
				String MatKhau = rs.getString("MatKhau");
				String ChucVu = rs.getString("ChucVu");
				int idCuaHang = rs.getInt("idCuaHang");
				int isThayMatKhau = rs.getInt("isThayMatKhau");
				NhanVien nhanvien = new NhanVien(id, idCuaHang, isThayMatKhau, TenNhanVien, TenDangNhap, MatKhau,
						ChucVu);
				lstNhanVien.add(nhanvien);
			}
			con.close();
			rs.close();
			return lstNhanVien;
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
		return lstNhanVien;
	}
}
