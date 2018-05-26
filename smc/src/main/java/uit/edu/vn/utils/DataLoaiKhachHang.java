package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.LoaiKhachHang;

public class DataLoaiKhachHang {
	public List<LoaiKhachHang> getDsLoaiKhachHangFromDb() throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		List<LoaiKhachHang> dsLoaiKhachHang = new ArrayList<LoaiKhachHang>();
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbloaikhachhang";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				String LoaiThe = rs.getString("LoaiThe");
				String MoTa = rs.getString("MoTa");
				Float TyLeQuyDoi = rs.getFloat("TiLeQuyDoiDiem");
				int NguongQuyDoi = rs.getInt("NguongQuyDoi");

				LoaiKhachHang lkh = new LoaiKhachHang(id, LoaiThe, MoTa, TyLeQuyDoi, NguongQuyDoi);
				dsLoaiKhachHang.add(lkh);
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
		return dsLoaiKhachHang;
	}

	public boolean themLoaiKhachHang(LoaiKhachHang lkh) {
		try {
			Connection con = ConnectData.getConnection();
			String query = "insert into tbloaikhachhang(LoaiThe,MoTa,TiLeQuyDoiDiem,NguongQuyDoi)"
					+ " values (?, ?, ?, ?)";

			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, lkh.getLoaiThe());
			preparedStmt.setString(2, lkh.getMoTa());
			preparedStmt.setFloat(3, lkh.getTiLeQuyDoi());
			preparedStmt.setInt(4, lkh.getNguongQuyDoi());
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
