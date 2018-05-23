package uit.edu.vn.models;

public class CuaHang {
	private int id;
	private String TenCuaHang;
	private String DiaChiCuaHang;
	private String NguoiQuanLy;
	private String SoDienThoai;

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

	public String getDiaChiCuaHang() {
		return DiaChiCuaHang;
	}

	public void setDiaChiCuaHang(String diaChiCuaHang) {
		DiaChiCuaHang = diaChiCuaHang;
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

	// TODO: THIÊN COMMENT VÌ KO SÀI CÁI NÀY
	public CuaHang() {
	}

	public CuaHang(int id, String tenCuaHang, String diaChiCuaHang, String nguoiQuanLy, String soDienThoai) {
		super();
		this.id = id;
		TenCuaHang = tenCuaHang;
		DiaChiCuaHang = diaChiCuaHang;
		NguoiQuanLy = nguoiQuanLy;
		SoDienThoai = soDienThoai;
	}
}
