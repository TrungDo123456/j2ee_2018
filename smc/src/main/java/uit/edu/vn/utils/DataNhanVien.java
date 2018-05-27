package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import uit.edu.vn.models.CuaHang;
import uit.edu.vn.models.NhanVien;
import uit.edu.vn.models.QuyenNhanVien;

public class DataNhanVien {
	public boolean ThemMoi(CuaHang ch) {
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
				int idQuyen = rs.getInt("idQuyen");
				int idCuaHang = rs.getInt("idCuaHang");
				int isThayMatKhau = rs.getInt("isThayMatKhau");
				NhanVien nhanvien = new NhanVien(id, idCuaHang, isThayMatKhau, idQuyen, TenNhanVien, TenDangNhap,
						MatKhau);
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

	public ArrayList<QuyenNhanVien> getLstQuyenNhanVienFromDb() throws SQLException {
		ArrayList<QuyenNhanVien> lstQuyenNhanVien = new ArrayList<QuyenNhanVien>();
		Statement st = null;
		ResultSet rs = null;
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbquyen";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				String TenQuyen = rs.getString("TenQuyen");
				String TenControl = rs.getString("TenControl");
				int HinhThuc = rs.getInt("HinhThuc");
				QuyenNhanVien quyennhanvien = new QuyenNhanVien(TenQuyen, TenControl, HinhThuc, id);
				lstQuyenNhanVien.add(quyennhanvien);
			}
			con.close();
			rs.close();
			return lstQuyenNhanVien;
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
		return lstQuyenNhanVien;
	}

	public boolean themNhanVien(NhanVien nv) {
		try {
			Connection con = ConnectData.getConnection();
			// TODO: MACUAHANG
			String query = "insert into tbnhanvien(TenNhanVien,TenDangNhap,MatKhau,idQuyen,idCuaHang,isThayMatKhau)"
					+ " values (?, ?, ?, ?, ?,?)";

			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, nv.getTENNHANVIEN());
			preparedStmt.setString(2, nv.getTENDANGNHAP());
			preparedStmt.setString(3, nv.getMATKHAU());
			preparedStmt.setInt(4, nv.getID_QUYEN());
			preparedStmt.setInt(5, nv.getID_CUAHANG());
			preparedStmt.setInt(6, 0);
			preparedStmt.execute();
			con.close();
		} catch (Exception e) {
			System.err.println("Got an exception!");
			System.err.println(e.getMessage());
			return false;
		}
		return true;
	}
}
