package uit.edu.vn.actions.cuahang;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.constant.MaTrangThai;
import uit.edu.vn.models.CuaHang;
import uit.edu.vn.utils.DataCuaHang;

public class CuaHangThemMoiAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private String TenCuaHang;
	private String DiaChiCuaHang;
	private String SoDienThoai;
	private String TenNhanVien;

	public String getTenNhanVien() {
		return TenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		TenNhanVien = tenNhanVien;
	}

	private DataCuaHang dbCuaHang = new DataCuaHang();

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

	public String getSoDienThoai() {
		return SoDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		SoDienThoai = soDienThoai;
	}

	public String ThemMoi() throws SQLException {
		if (TenCuaHang.length() == 0 || DiaChiCuaHang.length() == 0 || SoDienThoai.length() == 0) {
			// System.out.println("LOI:" + TenCuaHang.length());
			return MaTrangThai.KHOI_TAO;
		} else {
			System.out.println("ten nhan vien:" + TenNhanVien);
			CuaHang ch = new CuaHang();
			ch.setTenCuaHang(TenCuaHang);
			ch.setDiaChiCuaHang(DiaChiCuaHang);
			ch.setNguoiQuanLy(TenNhanVien);
			ch.setSoDienThoai(SoDienThoai);
			dbCuaHang.themCuaHang(ch);
			return MaTrangThai.THEM_THANH_CONG;
		}
	}
}
