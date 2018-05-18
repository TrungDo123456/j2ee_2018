package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.SanPham;
import uit.edu.vn.models.*;

public class DataSanPham {
	public List<SanPham> getDsSanPhamKhuyenMaiFromDb() throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<SanPham> dsSanPham = new ArrayList<SanPham>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select tbsanpham.id, tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.GiaBan,tbmavachsanpham.GiaBanMoi, tbsanpham.TenSanPham, tbsanpham.TenLoaiSanPham from ((tbsanphamcuahang inner join (select tbsanpham.id, tbsanpham.CodeSanPham, tbsanpham.TenSanPham, tbsanpham.DonVi, tbloaisanpham.MaLoaiSanPham, tbloaisanpham.TenLoaiSanPham from tbsanpham inner join tbloaisanpham on tbsanpham.idLoaiSanPham = tbloaisanpham.id) as tbsanpham on tbsanphamcuahang.idSanPham = tbsanpham.id ) inner join (select tbmavachsanpham.id, tbmavachsanpham.MaVach, tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.idSanPhamCuaHang, tbmavachsanpham.GiaBan, tbdanhsachkhuyenmaisanpham.GiaBanMoi from tbmavachsanpham inner join tbdanhsachkhuyenmaisanpham on tbmavachsanpham.id = tbdanhsachkhuyenmaisanpham.idMaVachSanPham) as tbmavachsanpham on tbsanphamcuahang.id = tbmavachsanpham.idSanPhamCuaHang) where tbmavachsanpham.GiaBanMoi != 0;";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int SoLuong = rs.getInt("SoLuong");
				int SuDung = rs.getInt("SuDung");
				String TenSanPham = rs.getString("TenSanPham");
				String TenLoaiSanPham = rs.getString("TenLoaiSanPham");
				int GiaBan = rs.getInt("GiaBan");
				int GiaBanMoi = rs.getInt("GiaBanMoi");
				SanPham sp = new SanPham(id,TenLoaiSanPham, GiaBanMoi, SoLuong, SuDung, GiaBan, TenSanPham);
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

	public List<SanPham> getDsSanPhamKhongKhuyeMaiFromDb() throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<SanPham> dsSanPham = new ArrayList<SanPham>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select tbsanpham.id, tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.GiaBan, tbsanpham.TenSanPham, tbsanpham.TenLoaiSanPham from ((tbsanphamcuahang inner join (select tbsanpham.id, tbsanpham.CodeSanPham, tbsanpham.TenSanPham, tbsanpham.DonVi, tbloaisanpham.MaLoaiSanPham, tbloaisanpham.TenLoaiSanPham from tbsanpham inner join tbloaisanpham on tbsanpham.idLoaiSanPham = tbloaisanpham.id) as tbsanpham on tbsanphamcuahang.idSanPham = tbsanpham.id ) inner join (select tbmavachsanpham.id, tbmavachsanpham.MaVach, tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.idSanPhamCuaHang, tbmavachsanpham.GiaBan, tbdanhsachkhuyenmaisanpham.GiaBanMoi from tbmavachsanpham inner join tbdanhsachkhuyenmaisanpham on tbmavachsanpham.id = tbdanhsachkhuyenmaisanpham.idMaVachSanPham) as tbmavachsanpham on tbsanphamcuahang.id = tbmavachsanpham.idSanPhamCuaHang) where tbmavachsanpham.GiaBanMoi = 0;";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int SoLuong = rs.getInt("SoLuong");
				int SuDung = rs.getInt("SuDung");
				String TenSanPham = rs.getString("TenSanPham");
				String TenLoaiSanPham = rs.getString("TenLoaiSanPham");
				int GiaBan = rs.getInt("GiaBan");
				SanPham sp = new SanPham(id,TenLoaiSanPham, null, SoLuong, SuDung, GiaBan, TenSanPham);
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

	public List<SanPham> getDsSanPhamFromDb() throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<SanPham> dsSanPham = new ArrayList<SanPham>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbSanPham ";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int codeSanPham = rs.getInt("CodeSanPham");
				String tenSanPham = rs.getString("TenSanPham");
				String donVi = rs.getString("DonVi");
				String moTa = rs.getString("MoTa");
				int idLoaiSanPham = rs.getInt("idLoaiSanPham");
				String hinhAnh = rs.getString("HinhAnh");
				int idNhaSanXuat = rs.getInt("idLoaiSanPham");
				SanPham sp = new SanPham(id, codeSanPham, tenSanPham, donVi, moTa, idLoaiSanPham, hinhAnh,
						idNhaSanXuat);
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
	
	public SanPham getProductById(int id) throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		SanPham sp = new SanPham() ;
		Connection con = ConnectData.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("SELECT TenSanPham,GiaBan FROM tbsanpham INNER JOIN tbmavachsanpham ON tbsanpham.id = tbmavachsanpham.id where tbsanpham.id = ?;");  
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				String TenSanPham = rs.getString("TenSanPham");
				int GiaBan = rs.getInt("GiaBan");
				sp = new SanPham(id,null, null, null, null, GiaBan, TenSanPham);
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
		return sp;
    }


}
