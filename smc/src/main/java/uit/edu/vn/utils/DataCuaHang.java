package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.CuaHang;

public class DataCuaHang {
	public List<CuaHang> getLstCuaHangFromDb() throws SQLException {
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
				String tenCuaHang = rs.getString("TenCuaHang");
				String diaChiCuaHang = rs.getString("DiaChiCuaHang");
				String nguoiQuanLy = rs.getString("NguoiQuanLy");
				String soDienThoai = rs.getString("SoDienThoai");
				// TODO: CHECK LẠI GIÙM THIÊN CHỖ NÀY FIX LẠI
				CuaHang cuahang = new CuaHang(id, tenCuaHang, diaChiCuaHang, nguoiQuanLy, soDienThoai);
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

	public boolean themCuaHang(CuaHang ch) {
		try {
			Connection con = ConnectData.getConnection();
			// TODO: MACUAHANG
			String query = "insert into tbcuahang(TenCuaHang,DiaChiCuaHang,NguoiQuanLy,SoDienThoai, MaCuaHang)"
					+ " values (?, ?, ?, ?, ?)";

			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, ch.getTenCuaHang());
			preparedStmt.setString(2, ch.getDiaChiCuaHang());
			preparedStmt.setString(3, ch.getNguoiQuanLy());
			preparedStmt.setString(4, ch.getSoDienThoai());
			preparedStmt.setString(5, "");
			preparedStmt.execute();
			con.close();
		} catch (Exception e) {
			System.err.println("Got an exception!");
			System.err.println(e.getMessage());
			return false;
		}
		return true;
	}

	public CuaHang getIdCuaHang(int idCuaHang) throws SQLException {
		Statement st = null;
		ResultSet rs = null;
		Connection con = ConnectData.getConnection();
		try {
			st = con.createStatement();
			String query = "select * from tbcuahang where id = " + idCuaHang + "";
			rs = st.executeQuery(query);
			while (rs.next()) {
				int id = rs.getInt("id");
				String tenCuaHang = rs.getString("TenCuaHang");
				String diaChiCuaHang = rs.getString("DiaChiCuaHang");
				String nguoiQuanLy = rs.getString("NguoiQuanLy");
				String soDienThoai = rs.getString("SoDienThoai");
				CuaHang cuahang = new CuaHang(id, tenCuaHang, diaChiCuaHang, nguoiQuanLy, soDienThoai);
				return cuahang;
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
		return null;
	}

	public boolean capnhatCuaHang(CuaHang ch) {
		try {
			Connection con = ConnectData.getConnection();
			String query = "update tbcuahang set TenCuaHang=?,DiaChiCuaHang=?,NguoiQuanLy=?,SoDienThoai=?"
					+ " where id=?";
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, ch.getTenCuaHang());
			preparedStmt.setString(2, ch.getDiaChiCuaHang());
			preparedStmt.setString(3, ch.getNguoiQuanLy());
			preparedStmt.setString(4, ch.getSoDienThoai());
			preparedStmt.setInt(5, ch.getIdCuaHang());
			preparedStmt.execute();
			con.close();
			return true;
		} catch (Exception e) {
			System.err.println("Got an exception!");
			System.err.println(e.getMessage());
			return false;
		}
	}

	public boolean xoaCuaHang(int idCuaHang) throws SQLException {
		try {
			Connection con = ConnectData.getConnection();
			String query = "delete  from tbcuahang where id = ?";
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setInt(1, idCuaHang);
			preparedStmt.execute();
			con.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
