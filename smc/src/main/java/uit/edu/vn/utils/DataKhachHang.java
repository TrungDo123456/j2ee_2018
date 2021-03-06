package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import uit.edu.vn.models.KhachHang;

public class DataKhachHang {
	public List<KhachHang> getDsKhachHangFromDb() throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<KhachHang> dsKhachHang = new ArrayList<KhachHang>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbKhachHang";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int gioiTinh = rs.getInt("GioiTinh");
				int idLoaiKhachHang = rs.getInt("idLoaiKhachHang");
				int diemTichLuy = rs.getInt("DiemTichLuy");
				int idCuaHang = rs.getInt("idCuaHang");
				
				String email = rs.getString("Email");
				String matKhau = rs.getString("MatKhau");
				String tenKhachHang = rs.getString("TenKhachHang");
				String diaChi = rs.getString("DiaChi");
				String soDienThoai = rs.getString("SoDienThoai");
				// java.sql.Date ngayNhap = rs.getDate("NgayNhap");
				KhachHang kh = new KhachHang(id, gioiTinh, idLoaiKhachHang, diemTichLuy, idCuaHang,
						tenKhachHang, diaChi, soDienThoai, email, matKhau, null);

				dsKhachHang.add(kh);
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
		return dsKhachHang;
	}

	public boolean CheckKhachHang(String email, String password) throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbKhachhang where Email = '" + email + "' and MatKhau = '"
					+ md5lib.md5(password) + "'";
			rs = st.executeQuery(query);
			return rs.first();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
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

	public boolean CheckKhachHang(String email) throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbKhachhang where Email = '" + email + "'";
			rs = st.executeQuery(query);
			return rs.first();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
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

	
	public void AddKhachHang(KhachHang khachhang) throws SQLException {

		Statement st = null;
		ResultSet rs = null;
		Connection con = ConnectData.getConnection();

		try { // id,tenkachhang,diachi,sdt,email,matkhau,ngaynhap,idcuahang,gioitinh,loaikhachhang,diemtichluy
			PreparedStatement ps = con
					.prepareStatement("insert into tbkhachhang value ( null, ?, ?, ?, ?, ?, now(), 1, ?, 1, 0);");
			ps.setString(1, khachhang.getTenKhachHang());
			ps.setString(2, khachhang.getDiaChi());
			ps.setString(3, khachhang.getSoDienThoai());
			ps.setString(4, khachhang.getEmail());
			ps.setString(5, md5lib.md5(khachhang.getMatKhau()));
			ps.setInt(6, khachhang.getGioiTinh());
			ps.executeUpdate();
			System.out.println("added");
		} catch (Exception e) {
			e.printStackTrace();
			return;
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
	
	public void ChangePassword(String passwordchange, String email) throws SQLException {

		Statement st = null;
		ResultSet rs = null;
		Connection con = ConnectData.getConnection();

		try {
			PreparedStatement ps = con
					.prepareStatement("UPDATE tbkhachhang SET MatKhau =? WHERE Email=?;");
			ps.setString(1, md5lib.md5(passwordchange));
			ps.setString(2, email);
			ps.executeUpdate();
			System.out.println("password changed");
		} catch (Exception e) {
			e.printStackTrace();
			return;
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

	
	
	public List<KhachHang> getDsKhachHangFromDb(String email) throws SQLException {

		Statement st = null;
		ResultSet rs = null;
		List<KhachHang> dsKhachHang = new ArrayList<KhachHang>();
		Connection con = ConnectData.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from tbKhachhang where Email = ?;");

			ps.setString(1, email);
		
			rs = ps.executeQuery();

			
			while (rs.next()) {
				
				int id = rs.getInt("id");
				int gioiTinh = rs.getInt("GioiTinh");
				int idLoaiKhachHang = rs.getInt("idLoaiKhachHang");
				int diemTichLuy = rs.getInt("DiemTichLuy");
				int idCuaHang = rs.getInt("idCuaHang");
				String tenKhachHang = rs.getString("TenKhachHang");
				String matKhau = rs.getString("MatKhau");
				String diaChi = rs.getString("DiaChi");
				String soDienThoai = rs.getString("SoDienThoai");
				java.sql.Date ngayNhap = rs.getDate("NgayNhap");
				KhachHang kh = new KhachHang(id, gioiTinh,idLoaiKhachHang, diemTichLuy,
					idCuaHang, tenKhachHang, diaChi, soDienThoai,
						 email,  matKhau, ngayNhap);

				dsKhachHang.add(kh);
				
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
		return dsKhachHang;
	}
}
