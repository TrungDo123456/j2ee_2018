package uit.edu.vn.actions.nhanvien;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.NhanVien;
import uit.edu.vn.utils.DataNhanVien;

public class NhanVienThemMoiAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String TenNhanVien, TenDangNhap, MatKhau;
	int idCuaHang, idQuyen;
	private DataNhanVien dbNhanVien = new DataNhanVien();

	public int getIdQuyen() {
		return idQuyen;
	}

	public void setIdQuyen(int idQuyen) {
		this.idQuyen = idQuyen;
	}

	public int getIdCuaHang() {
		return idCuaHang;
	}

	public void setIdCuaHang(int idCuaHang) {
		this.idCuaHang = idCuaHang;
	}

	public String getTenNhanVien() {
		return TenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		TenNhanVien = tenNhanVien;
	}

	public String getTenDangNhap() {
		return TenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		TenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return MatKhau;
	}

	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}

	public String themNhanVien() throws Exception {
		if (TenNhanVien.length() == 0 || TenDangNhap.length() == 0 || MatKhau.length() == 0) {
			return ERROR;
		} else {
			NhanVien nv = new NhanVien();
			nv.setTENNHANVIEN(TenNhanVien);
			nv.setTENDANGNHAP(TenDangNhap);
			nv.setMATKHAU(MatKhau);
			nv.setID_QUYEN(1);
			nv.setID_CUAHANG(idCuaHang);
			System.out.println("noi dung: " + TenNhanVien + TenDangNhap + MatKhau + idQuyen + idCuaHang);
			System.out.println("quyen han" + idQuyen);
			dbNhanVien.themNhanVien(nv);
			return SUCCESS;
		}

	}
}
