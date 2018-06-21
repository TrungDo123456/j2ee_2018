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
	public List<SanPham> getDsSanPhamByKhuyenMaiFromDb(String key) throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<SanPham> dsSanPham = new ArrayList<SanPham>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select tbsanpham.HinhAnh, tbsanpham.id as id_sanpham, tbmavachsanpham.id_mavachsanpham, tbmavachsanpham.idSanPhamCuaHang, tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.GiaBan,\r\n" + 
					"tbmavachsanpham.GiaBanMoi, tbsanpham.TenSanPham, tbsanpham.TenLoaiSanPham, tbsanpham.DonVi, tbsanpham.MoTa\r\n" + 
					"from ((tbsanphamcuahang\r\n" + 
					"inner join (select tbsanpham.HinhAnh,tbsanpham.id, tbsanpham.CodeSanPham, tbsanpham.TenSanPham, tbsanpham.DonVi,tbsanpham.MoTa,\r\n" + 
					" tbloaisanpham.MaLoaiSanPham, tbloaisanpham.TenLoaiSanPham \r\n" + 
					" from tbsanpham \r\n" + 
					" inner join tbloaisanpham on tbsanpham.idLoaiSanPham = tbloaisanpham.id) as tbsanpham \r\n" + 
					" on tbsanphamcuahang.idSanPham = tbsanpham.id ) \r\n" + 
					" inner join (select tbmavachsanpham.id as id_mavachsanpham, tbmavachsanpham.MaVach, tbmavachsanpham.SoLuong, \r\n" + 
					" tbmavachsanpham.SuDung, tbmavachsanpham.GiaBan, tbdanhsachkhuyenmaisanpham.GiaBanMoi, tbmavachsanpham.idSanPhamCuaHang from\r\n" + 
					" tbmavachsanpham inner join tbdanhsachkhuyenmaisanpham on tbmavachsanpham.id = tbdanhsachkhuyenmaisanpham.idMaVachSanPham) \r\n" + 
					" as tbmavachsanpham on tbsanphamcuahang.id = tbmavachsanpham.idSanPhamCuaHang) where tbmavachsanpham.GiaBanMoi " + key;
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id_sanpham = rs.getInt("id_sanpham");
				int id_mavachsanpham = rs.getInt("id_mavachsanpham");
				int id_sanphamcuahang = rs.getInt("idSanPhamCuaHang");
				int SoLuong = rs.getInt("SoLuong");
				int SuDung = rs.getInt("SuDung");
				String TenSanPham = rs.getString("TenSanPham");
				String TenLoaiSanPham = rs.getString("TenLoaiSanPham");
				String MoTa = rs.getString("MoTa");
				String DonVi = rs.getString("DonVi");
				String HinhAnh = rs.getString("HinhAnh");
				int GiaBan = rs.getInt("GiaBan");
				int GiaBanMoi = rs.getInt("GiaBanMoi");
				SanPham sp = new SanPham(id_sanpham,TenLoaiSanPham,DonVi,MoTa, GiaBanMoi,id_mavachsanpham,id_sanphamcuahang, SoLuong, SuDung, HinhAnh, GiaBan, TenSanPham);
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
			PreparedStatement ps=con.prepareStatement("SELECT MoTa,TenSanPham,GiaBan,HinhAnh FROM tbsanpham INNER JOIN tbmavachsanpham ON tbsanpham.id = tbmavachsanpham.id where tbsanpham.id = ?;");  
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				String TenSanPham = rs.getString("TenSanPham");
				String MoTa = rs.getString("MoTa");
				String HinhAnh = rs.getString("HinhAnh");
				int GiaBan = rs.getInt("GiaBan");
				sp = new SanPham(id,null, null,MoTa,null, null ,null,null,null,HinhAnh, GiaBan, TenSanPham);
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
