package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionContext;

import uit.edu.vn.models.ChiTietDonHang;
import uit.edu.vn.models.DonHang;
import uit.edu.vn.models.SanPham;

@SuppressWarnings("unused")
public class DataDonHang {
	private Map<SanPham, Integer> products;
	Statement st = null;
	ResultSet rs = null;
	
	public List<DonHang> getDsDonHangFromDb() throws SQLException {
		List<DonHang> dsDonHang = new ArrayList<DonHang>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbDonHang ";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int idCuaHang = rs.getInt("idCuaHang");
				int idKhachHang = rs.getInt("idKhachHang");
				int idNhanVien = rs.getInt("idNhanVien");
				int soDonHang = rs.getInt("SoDonHang");
				int trangThai = rs.getInt("TrangThai");
				Date ngayLap = rs.getDate("NgayLap");
				String ghiChu = rs.getString("GhiChu");
				DonHang dh = new DonHang( id, idCuaHang, idKhachHang, idNhanVien, soDonHang, trangThai,  ngayLap, ghiChu);
				dsDonHang.add(dh);
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
		return dsDonHang;
	}
	public List<ChiTietDonHang> getChiTietDonHangFromDb(int key) throws SQLException {
		List<ChiTietDonHang> dsChiTietDonHang = new ArrayList<ChiTietDonHang>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select tbchitietdonhang.id, tbchitietdonhang.idDonHang, tbchitietdonhang.SoLuong, tbchitietdonhang.DonGia, tbchitietdonhang.GhiChu, tbchitietdonhang.idMaVachSanPham,tbsanpham.TenSanPham, tbchitietdonhang.ThoiGianBaoHanh\r\n" + 
					"from tbchitietdonhang \r\n" + 
					"inner join (SELECT tbmavachsanpham.id, tbsanpham.TenSanPham\r\n" + 
					"FROM ((tbsanphamcuahang\r\n" + 
					"INNER JOIN tbmavachsanpham ON tbsanphamcuahang.id = tbmavachsanpham.idSanPhamCuaHang)\r\n" + 
					"INNER JOIN tbsanpham ON tbsanphamcuahang.idSanPham = tbsanpham.id)) as tbsanpham on tbchitietdonhang.idMaVachSanPham = tbsanpham.id  where idDonHang =" + key;
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				int idDonHang = rs.getInt("idDonHang");
				int SoLuong = rs.getInt("SoLuong");
				int DonGia = rs.getInt("DonGia");
				int ThoiGianBaoHanh = rs.getInt("ThoiGianBaoHanh");
				int idMaVachSanPham = rs.getInt("idMaVachSanPham");
				String TenSanPham = rs.getString("TenSanPham");
				String ghiChu = rs.getString("GhiChu");
				ChiTietDonHang dh = new ChiTietDonHang( id, SoLuong, idMaVachSanPham,TenSanPham, ThoiGianBaoHanh, idDonHang, DonGia,  ghiChu);
				dsChiTietDonHang.add(dh);
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
		return dsChiTietDonHang;
	}
	public void ThemDonHang(DataGioHang datagiohang) throws SQLException {
		Connection con = ConnectData.getConnection();
		Integer idkhachhang = (Integer)ActionContext.getContext().getSession().get("idkhachhang");
		try { // int id, Date ngayLap, int idCuaHang, int idKhachHang, int idNhanVien, String ghiChu ,int soDonHang, int trangThai 
			PreparedStatement ps = con.prepareStatement("insert into tbdonhang value (null,now(),1,?,1,null,1,0);");
			
			ps.setInt(1, idkhachhang);
			ps.executeUpdate();
			//System.out.println("id khach hang" + idkhachhang);
			//System.out.println("added don hang");
			ThemChiTietDonHang(datagiohang);
			
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

	public void ThemChiTietDonHang(DataGioHang datagiohang) throws SQLException {
		
        products = datagiohang.getProducts();
        Set<SanPham> keys = products.keySet();
        for (SanPham product : keys) {
        	 /*System.out.println(product.getId());
        	 System.out.println(product.getGiaBan());
        	 System.out.println(products.get(product));
        	 System.out.println();
        	 System.out.println("//////////////////////");*/
        	 
        	 Connection con = ConnectData.getConnection();
     		try { 											// id, idDonHang, soLuong, donGia, ghiChu, idMaVachSanPham, thoigianBaoHanh, 
     			PreparedStatement ps = con
     					.prepareStatement("insert into tbchitietdonhang value ( null, ?, ?, ?, null, ?, 0);");
     			ps.setInt(1,getDsDonHangFromDb().size());
     			ps.setInt(2, products.get(product));
     			ps.setInt(3, product.getGiaBan());
     			ps.setInt(4, product.getId());
     			ps.executeUpdate();
     			//System.out.println("added chi tiet don hang");
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
        	 
        }
}

