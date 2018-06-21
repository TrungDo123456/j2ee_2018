package uit.edu.vn.models;

public class NhaCungCap {
	int id, idCuaHang;
	String CodeNhaCungCap, TenNhaCungCap, DiaChi, SoDienThoai;

	public NhaCungCap(int id, int idCuaHang, String codeNhaCungCap, String tenNhaCungCap, String diaChi,
			String soDienThoai) {
		super();
		this.id = id;
		this.idCuaHang = idCuaHang;
		CodeNhaCungCap = codeNhaCungCap;
		TenNhaCungCap = tenNhaCungCap;
		DiaChi = diaChi;
		SoDienThoai = soDienThoai;
	}

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

	public String getCodeNhaCungCap() {
		return CodeNhaCungCap;
	}

	public void setCodeNhaCungCap(String codeNhaCungCap) {
		CodeNhaCungCap = codeNhaCungCap;
	}

	public String getTenNhaCungCap() {
		return TenNhaCungCap;
	}

	public void setTenNhaCungCap(String tenNhaCungCap) {
		TenNhaCungCap = tenNhaCungCap;
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
}
