package uit.edu.vn.models;

public class CuaHang {
	private int id;
	private String TenCuaHang;
	private String DiaChiCuaHang;
	private String NguoiQuanLy;
	private String SoDienThoai;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenCuaHang() {
		return this.TenCuaHang;
	}

	public void setTenCuaHang(String tenCuaHang) {
		this.TenCuaHang = tenCuaHang;
	}

	public String getDiaChiCuaHang() {
		return this.DiaChiCuaHang;
	}

	public void setDiaChiCuaHang(String diaChiCuaHang) {
		this.DiaChiCuaHang = diaChiCuaHang;
	}

	public String getNguoiQuanLy() {
		return this.NguoiQuanLy;
	}

	public void setNguoiQuanLy(String nguoiQuanLy) {
		this.NguoiQuanLy = nguoiQuanLy;
	}

	public String getSoDienThoai() {
		return this.SoDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.SoDienThoai = soDienThoai;
	}

	// TODO: THIÊN COMMENT VÌ KO SÀI CÁI NÀY
	public CuaHang() {
	}

	public CuaHang(int id, String tenCuaHang, String diaChiCuaHang, String nguoiQuanLy, String soDienThoai) {
		super();
		this.id = id;
		this.TenCuaHang = tenCuaHang;
		this.DiaChiCuaHang = diaChiCuaHang;
		this.NguoiQuanLy = nguoiQuanLy;
		this.SoDienThoai = soDienThoai;
	}
}
