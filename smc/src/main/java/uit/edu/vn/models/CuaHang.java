package uit.edu.vn.models;

public class CuaHang {
	private int idCuaHang;
	private String TenCuaHang;
	private String DiaChiCuaHang;
	private String NguoiQuanLy;
	private String SoDienThoai;

	public int getIdCuaHang() {
		return idCuaHang;
	}

	public void setIdCuaHang(int idCuaHang) {
		this.idCuaHang = idCuaHang;
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

	public CuaHang(int idCuaHang, String TenCuaHang, String DiaChiCuaHang, String NguoiQuanLy, String SoDienThoai) {
		super();
		this.idCuaHang = idCuaHang;
		this.TenCuaHang = TenCuaHang;
		this.DiaChiCuaHang = DiaChiCuaHang;
		this.NguoiQuanLy = NguoiQuanLy;
		this.SoDienThoai = SoDienThoai;
	}
}
