package uit.edu.vn.models;

public class QuyenNhanVien {
	String TenQuyen, TenControl;
	int HinhThuc, id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenQuyen() {
		return TenQuyen;
	}

	public void setTenQuyen(String tenQuyen) {
		TenQuyen = tenQuyen;
	}

	public String getTenControl() {
		return TenControl;
	}

	public void setTenControl(String tenControl) {
		TenControl = tenControl;
	}

	public int getHinhThuc() {
		return HinhThuc;
	}

	public void setHinhThuc(int hinhThuc) {
		HinhThuc = hinhThuc;
	}

	public QuyenNhanVien(String tenQuyen, String tenControl, int hinhThuc, int id) {
		super();
		TenQuyen = tenQuyen;
		TenControl = tenControl;
		HinhThuc = hinhThuc;
		this.id = id;
	}

}
