package uit.edu.vn.models;

public class ChiTietDonHang extends SanPham{
	private int id, soLuong, idMaVachSanPham, thoigianBaoHanh, idDonHang, donGia;
	private String ghiChu;
	public Integer getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Integer getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public Integer getIdMaVachSanPham() {
		return idMaVachSanPham;
	}
	public void setIdMaVachSanPham(int idMaVachSanPham) {
		this.idMaVachSanPham = idMaVachSanPham;
	}
	public int getThoigianBaoHanh() {
		return thoigianBaoHanh;
	}
	public void setThoigianBaoHanh(int thoigianBaoHanh) {
		this.thoigianBaoHanh = thoigianBaoHanh;
	}
	public int getIdDonHang() {
		return idDonHang;
	}
	public void setIdDonHang(int idDonHang) {
		this.idDonHang = idDonHang;
	}
	public int getDonGia() {
		return donGia;
	}
	public void setDonGia(int donGia) {
		this.donGia = donGia;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	public ChiTietDonHang(int id, int soLuong, int idMaVachSanPham, String tenSanPham, int thoigianBaoHanh, int idDonHang, int donGia,
			String ghiChu) {
		super(tenSanPham);
		this.id = id;
		this.soLuong = soLuong;
		this.idMaVachSanPham = idMaVachSanPham;
		this.thoigianBaoHanh = thoigianBaoHanh;
		this.idDonHang = idDonHang;
		this.donGia = donGia;
		this.ghiChu = ghiChu;
	}
	public ChiTietDonHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
