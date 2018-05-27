package uit.edu.vn.models;

public class NhanVien {
	int ID_NHANVIEN, ID_CUAHANG, ISTHAYMATKHAU, ID_QUYEN;
	String TENNHANVIEN, TENDANGNHAP, MATKHAU;

	public NhanVien(int iD_NHANVIEN, int iD_CUAHANG, int iSTHAYMATKHAU, int iD_QUYEN, String tENNHANVIEN,
			String tENDANGNHAP, String mATKHAU) {
		super();
		ID_NHANVIEN = iD_NHANVIEN;
		ID_CUAHANG = iD_CUAHANG;
		ISTHAYMATKHAU = iSTHAYMATKHAU;
		ID_QUYEN = iD_QUYEN;
		TENNHANVIEN = tENNHANVIEN;
		TENDANGNHAP = tENDANGNHAP;
		MATKHAU = mATKHAU;
	}

	public NhanVien() {
		super();
	}

	public int getID_NHANVIEN() {
		return ID_NHANVIEN;
	}

	public void setID_NHANVIEN(int iD_NHANVIEN) {
		ID_NHANVIEN = iD_NHANVIEN;
	}

	public int getID_CUAHANG() {
		return ID_CUAHANG;
	}

	public void setID_CUAHANG(int iD_CUAHANG) {
		ID_CUAHANG = iD_CUAHANG;
	}

	public int getISTHAYMATKHAU() {
		return ISTHAYMATKHAU;
	}

	public void setISTHAYMATKHAU(int iSTHAYMATKHAU) {
		ISTHAYMATKHAU = iSTHAYMATKHAU;
	}

	public String getTENNHANVIEN() {
		return TENNHANVIEN;
	}

	public void setTENNHANVIEN(String tENNHANVIEN) {
		TENNHANVIEN = tENNHANVIEN;
	}

	public String getTENDANGNHAP() {
		return TENDANGNHAP;
	}

	public void setTENDANGNHAP(String tENDANGNHAP) {
		TENDANGNHAP = tENDANGNHAP;
	}

	public String getMATKHAU() {
		return MATKHAU;
	}

	public void setMATKHAU(String mATKHAU) {
		MATKHAU = mATKHAU;
	}

	public int getID_QUYEN() {
		return ID_QUYEN;
	}

	public void setID_QUYEN(int iD_QUYEN) {
		ID_QUYEN = iD_QUYEN;
	}
}
