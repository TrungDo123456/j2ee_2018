package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.SanPham;

public class DataSanPham {
	public List<SanPham> getDsSanPhamKhuyenMaiFromDb() throws SQLException
	{
		Statement st = null;
		ResultSet rs = null;
		List<SanPham> dsSanPham= new ArrayList<SanPham>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.GiaBan,tbmavachsanpham.GiaBanMoi, tbsanpham.TenSanPham, tbsanpham.TenLoaiSanPham from ((tbsanphamcuahang inner join (select tbsanpham.id, tbsanpham.CodeSanPham, tbsanpham.TenSanPham, tbsanpham.DonVi, tbloaisanpham.MaLoaiSanPham, tbloaisanpham.TenLoaiSanPham from tbsanpham inner join tbloaisanpham on tbsanpham.idLoaiSanPham = tbloaisanpham.id) as tbsanpham on tbsanphamcuahang.idSanPham = tbsanpham.id ) inner join (select tbmavachsanpham.id, tbmavachsanpham.MaVach, tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.idSanPhamCuaHang, tbmavachsanpham.GiaBan, tbdanhsachkhuyenmaisanpham.GiaBanMoi from tbmavachsanpham inner join tbdanhsachkhuyenmaisanpham on tbmavachsanpham.id = tbdanhsachkhuyenmaisanpham.idMaVachSanPham) as tbmavachsanpham on tbsanphamcuahang.id = tbmavachsanpham.idSanPhamCuaHang) where tbmavachsanpham.GiaBanMoi != 0;";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int SoLuong = rs.getInt("SoLuong");
				int SuDung = rs.getInt("SuDung");
				String TenSanPham= rs.getString("TenSanPham");
				String TenLoaiSanPham = rs.getString("TenLoaiSanPham");
				int GiaBan = rs.getInt("GiaBan");
				int GiaBanMoi = rs.getInt("GiaBanMoi");
				SanPham sp = new SanPham(TenLoaiSanPham,GiaBanMoi,SoLuong,SuDung,GiaBan,TenSanPham);
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
	public List<SanPham> getDsSanPhamFromDb() throws SQLException
	{
		Statement st = null;
		ResultSet rs = null;
		List<SanPham> dsSanPham= new ArrayList<SanPham>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.GiaBan, tbsanpham.TenSanPham, tbsanpham.TenLoaiSanPham from ((tbsanphamcuahang inner join (select tbsanpham.id, tbsanpham.CodeSanPham, tbsanpham.TenSanPham, tbsanpham.DonVi, tbloaisanpham.MaLoaiSanPham, tbloaisanpham.TenLoaiSanPham from tbsanpham inner join tbloaisanpham on tbsanpham.idLoaiSanPham = tbloaisanpham.id) as tbsanpham on tbsanphamcuahang.idSanPham = tbsanpham.id ) inner join (select tbmavachsanpham.id, tbmavachsanpham.MaVach, tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.idSanPhamCuaHang, tbmavachsanpham.GiaBan, tbdanhsachkhuyenmaisanpham.GiaBanMoi from tbmavachsanpham inner join tbdanhsachkhuyenmaisanpham on tbmavachsanpham.id = tbdanhsachkhuyenmaisanpham.idMaVachSanPham) as tbmavachsanpham on tbsanphamcuahang.id = tbmavachsanpham.idSanPhamCuaHang) where tbmavachsanpham.GiaBanMoi = 0;";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int SoLuong = rs.getInt("SoLuong");
				int SuDung = rs.getInt("SuDung");
				String TenSanPham= rs.getString("TenSanPham");
				String TenLoaiSanPham = rs.getString("TenLoaiSanPham");
				int GiaBan = rs.getInt("GiaBan");
				SanPham sp = new SanPham(TenLoaiSanPham,null,SoLuong,SuDung,GiaBan,TenSanPham);
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
}
