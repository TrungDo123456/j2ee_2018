package uit.edu.vn.models;

public class CuaHang {
	private int id;
	private String TenCuaHang;
	private String DiaChiCuaHang;
	private String NguoiQuanLy;
	private String SoDienThoai;
	private String TenCuaHangTrenBill;
	private String ThongTinLienHeTrenBill;
	public String getDiaChiCuaHang() {
		return DiaChiCuaHang;
	}
	public void setDiaChiCuaHang(String diaChiCuaHang) {
		DiaChiCuaHang = diaChiCuaHang;
	}
	private String LogoTrenBill;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenCuaHang() {
		return TenCuaHang;
	}
	public void setTenCuaHang(String tenCuaHang) {
		TenCuaHang = tenCuaHang;
	}
	public String getNguoiQuanLy() {
		return NguoiQuanLy;
	}
	public void setNguoiQuanLy(String nguoiQuanLy) {
		NguoiQuanLy = nguoiQuanLy;
	}
	public String getSoDienThoai() {
		return SoDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		SoDienThoai = soDienThoai;
	}
	public String getTenCuaHangTrenBill() {
		return TenCuaHangTrenBill;
	}
	public void setTenCuaHangTrenBill(String tenCuaHangTrenBill) {
		TenCuaHangTrenBill = tenCuaHangTrenBill;
	}
	public String getThongTinLienHeTrenBill() {
		return ThongTinLienHeTrenBill;
	}
	public void setThongTinLienHeTrenBill(String thongTinLienHeTrenBill) {
		ThongTinLienHeTrenBill = thongTinLienHeTrenBill;
	}
	public String getLogoTrenBill() {
		return LogoTrenBill;
	}
	public void setLogoTrenBill(String logoTrenBill) {
		LogoTrenBill = logoTrenBill;
	}
	public CuaHang(int id, String tenCuaHang, String diachiCuaHang, String nguoiQuanLy, String soDienThoai, String tenCuaHangTrenBill,
			String thongTinLienHeTrenBill, String logoTrenBill) {
		super();
		this.id = id;
		TenCuaHang = tenCuaHang;
		DiaChiCuaHang = diachiCuaHang;
		NguoiQuanLy = nguoiQuanLy;
		SoDienThoai = soDienThoai;
		TenCuaHangTrenBill = tenCuaHangTrenBill;
		ThongTinLienHeTrenBill = thongTinLienHeTrenBill;
		LogoTrenBill = logoTrenBill;
	}
	
}
