package uit.edu.vn.models;

import java.util.Date;

public class DonHang {
	private int id, idCuaHang,idKhachHang, idNhanVien, trangThai;
	private double tongTien;
	private Date ngayLap;
	private String ghiChu;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdCuaHang() {
		return idCuaHang;
	}
	public void setIdCuaHang(int idCuaHang) {
		this.idCuaHang = idCuaHang;
	}
	public int getIdKhachHang() {
		return idKhachHang;
	}
	public void setIdKhachHang(int idKhachHang) {
		this.idKhachHang = idKhachHang;
	}
	public int getIdNhanVien() {
		return idNhanVien;
	}
	public void setIdNhanVien(int idNhanVien) {
		this.idNhanVien = idNhanVien;
	}
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	public Date getNgayLap() {
		return ngayLap;
	}
	public void setNgayLap(Date ngayLap) {
		this.ngayLap = ngayLap;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	
	public double getTongTien() {
		return tongTien;
	}
	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}
	public DonHang(int id, int idCuaHang, int idKhachHang, int idNhanVien, int trangThai, double tongTien, Date ngayLap,
			String ghiChu) {
		super();
		this.id = id;
		this.idCuaHang = idCuaHang;
		this.idKhachHang = idKhachHang;
		this.idNhanVien = idNhanVien;
		this.trangThai = trangThai;
		this.tongTien = tongTien;
		this.ngayLap = ngayLap;
		this.ghiChu = ghiChu;
	}
	
	
	
	
	
}
