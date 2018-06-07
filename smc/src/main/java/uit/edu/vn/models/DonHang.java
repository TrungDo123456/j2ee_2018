package uit.edu.vn.models;

import java.util.Date;

public class DonHang {
	private int id, idCuaHang,idKhachHang, idNhanVien, soDonHang, trangThai;
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
	public int getSoDonHang() {
		return soDonHang;
	}
	public void setSoDonHang(int soDonHang) {
		this.soDonHang = soDonHang;
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
	public DonHang(int id, int idCuaHang, int idKhachHang, int idNhanVien, int soDonHang, int trangThai, Date ngayLap,
			String ghiChu) {
		super();
		this.id = id;
		this.idCuaHang = idCuaHang;
		this.idKhachHang = idKhachHang;
		this.idNhanVien = idNhanVien;
		this.soDonHang = soDonHang;
		this.trangThai = trangThai;
		this.ngayLap = ngayLap;
		this.ghiChu = ghiChu;
	}
	
	
	
	
}
