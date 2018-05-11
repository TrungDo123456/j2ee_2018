package uit.edu.vn.models;

public class NhaSanXuat {
	int id;
	String MaNhaSanXuat, TenNhaSanXuat, DiaChi, GhiChu;

	public NhaSanXuat(int id, String maNhaSanXuat, String tenNhaSanXuat, String diaChi, String ghiChu) {
		super();
		this.id = id;
		MaNhaSanXuat = maNhaSanXuat;
		TenNhaSanXuat = tenNhaSanXuat;
		DiaChi = diaChi;
		GhiChu = ghiChu;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMaNhaSanXuat() {
		return MaNhaSanXuat;
	}

	public void setMaNhaSanXuat(String maNhaSanXuat) {
		MaNhaSanXuat = maNhaSanXuat;
	}

	public String getTenNhaSanXuat() {
		return TenNhaSanXuat;
	}

	public void setTenNhaSanXuat(String tenNhaSanXuat) {
		TenNhaSanXuat = tenNhaSanXuat;
	}

	public String getDiaChi() {
		return DiaChi;
	}

	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}

	public String getGhiChu() {
		return GhiChu;
	}

	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}
}
