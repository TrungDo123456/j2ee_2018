package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.KhachHang;

public class DataKhachHang {
//	public List<KhachHang> getDsKhachHangFromDb() throws SQLException {
//		Statement st = null;
//		ResultSet rs = null;
//		List<KhachHang> dsKhachHang = new ArrayList<KhachHang>();
//		Connection con = ConnectData.getConnection();
//		try {
//			st = con.createStatement();
//			String query = "select * from tbKhachHang";
//			rs = st.executeQuery(query);
//			while (rs.next()) {
//				int id = rs.getInt("id");
//				String LoaiThe = rs.getString("LoaiThe");
//				String MoTa = rs.getString("MoTa");
//				Float TyLeQuyDoi = rs.getFloat("TiLeQuyDoiDiem");
//				int NguongQuyDoi = rs.getInt("NguongQuyDoi");
//				
//				KhachHang lkh = new KhachHang(id, LoaiThe, MoTa, TyLeQuyDoi, NguongQuyDoi);
//				dsKhachHang.add(lkh);
//			}
//			con.close();
//			rs.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			if (rs != null)
//				try {
//					rs.close();
//				} catch (Exception e) {
//				}
//			if (st != null)
//				try {
//					st.close();
//				} catch (Exception e) {
//				}
//			if (con != null)
//				try {
//					con.close();
//				} catch (Exception e) {
//				}
//		}
//		return dsKhachHang;
//	}
}
