package uit.edu.vn.models;

import java.util.Date;

public class KhachHang {
	private int id, GioiTinh, LoaiKhachHang, DiemTichLuy, idCuaHang;
	private String MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, Email, MatKhau;
	private Date NgayNhap;
	
	
	
	public KhachHang(int id, int gioiTinh, int loaiKhachHang, int diemTichLuy,
			int idCuaHang, String maKhachHang, String tenKhachHang, String diaChi, String soDienThoai,
			String email, String matKhau, Date ngayNhap) {
		super();
		this.id = id;
		GioiTinh = gioiTinh;
		LoaiKhachHang = loaiKhachHang;
		DiemTichLuy = diemTichLuy;
		this.idCuaHang = idCuaHang;
		MaKhachHang = maKhachHang;
		TenKhachHang = tenKhachHang;
		DiaChi = diaChi;
		SoDienThoai = soDienThoai;
		Email = email;
		MatKhau = matKhau;
		NgayNhap = ngayNhap;
	}
	
	public KhachHang() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(int gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public int getLoaiKhachHang() {
		return LoaiKhachHang;
	}
	public void setLoaiKhachHang(int loaiKhachHang) {
		LoaiKhachHang = loaiKhachHang;
	}
	public int getDiemTichLuy() {
		return DiemTichLuy;
	}
	public void setDiemTichLuy(int diemTichLuy) {
		DiemTichLuy = diemTichLuy;
	}
	public int getIdCuaHang() {
		return idCuaHang;
	}
	public void setIdCuaHang(int idCuaHang) {
		this.idCuaHang = idCuaHang;
	}
	public String getMaKhachHang() {
		return MaKhachHang;
	}
	public void setMaKhachHang(String maKhachHang) {
		MaKhachHang = maKhachHang;
	}
	public String getTenKhachHang() {
		return TenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		TenKhachHang = tenKhachHang;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getSoDienThoai() {
		return SoDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		SoDienThoai = soDienThoai;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	public Date getNgayNhap() {
		return NgayNhap;
	}
	public void setNgayNhap(Date ngayNhap) {
		NgayNhap = ngayNhap;
	}
	

}
