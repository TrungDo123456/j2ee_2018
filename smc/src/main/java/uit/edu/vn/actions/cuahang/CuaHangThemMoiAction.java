package uit.edu.vn.actions.cuahang;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.actions.nhanvien.NhanVienAction;
import uit.edu.vn.models.CuaHang;
import uit.edu.vn.models.NhanVien;
import uit.edu.vn.utils.DataCuaHang;

public class CuaHangThemMoiAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private NhanVienAction nhanvien = new NhanVienAction();
	private String TenCuaHang;
	private String DiaChiCuaHang;
	private String SoDienThoai;
	private String TenNhanVien;
	private CuaHang cuahang = new CuaHang();
	private int idCuaHang;
	private List<NhanVien> lstNhanVien = new ArrayList<NhanVien>();

	public List<NhanVien> getLstNhanVien() {
		return lstNhanVien;
	}

	public void setLstNhanVien(List<NhanVien> lstNhanVien) {
		this.lstNhanVien = lstNhanVien;
	}

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

	public CuaHang getCuahang() {
		return cuahang;
	}

	public void setCuahang(CuaHang cuahang) {
		this.cuahang = cuahang;
	}

	public int getIdCuaHang() {
		return idCuaHang;
	}

	public void setIdCuaHang(int idCuaHang) {
		this.idCuaHang = idCuaHang;
	}

	public String ThemMoi() throws SQLException {
		if (TenCuaHang.length() == 0 || DiaChiCuaHang.length() == 0 || SoDienThoai.length() == 0) {
			// System.out.println("LOI:" + TenCuaHang.length());
			return ERROR;
		} else {
			System.out.println("ten nhan vien:" + TenNhanVien);
			CuaHang ch = new CuaHang();
			ch.setTenCuaHang(TenCuaHang);
			ch.setDiaChiCuaHang(DiaChiCuaHang);
			ch.setNguoiQuanLy(TenNhanVien);
			ch.setSoDienThoai(SoDienThoai);
			dbCuaHang.themCuaHang(ch);
			return SUCCESS;
		}
	}

	public String update() throws Exception {
		lstNhanVien = nhanvien.getDSNV();
		// System.out.println("id cuahang:" + lstNhanVien.size());
		this.cuahang = dbCuaHang.getIdCuaHang(this.idCuaHang);
		// System.out.println("nguoi quan ly:" + cuahang.getNguoiQuanLy());
		return SUCCESS;
	}

	public String capnhatCuaHang() throws Exception {
		/*
		 * if (TenCuaHang.length() == 0 || DiaChiCuaHang.length() == 0 ||
		 * SoDienThoai.length() == 0) { // System.out.println("LOI:" +
		 * TenCuaHang.length()); return ERROR; } else {
		 * System.out.println("ten nhan vien:" + TenNhanVien); CuaHang ch = new
		 * CuaHang(); ch.setId(this.idCuaHang); ch.setTenCuaHang(TenCuaHang);
		 * ch.setDiaChiCuaHang(DiaChiCuaHang); ch.setNguoiQuanLy(TenNhanVien);
		 * ch.setSoDienThoai(SoDienThoai); boolean result =
		 * dbCuaHang.capnhatCuaHang(ch); if (result) { return SUCCESS; } else { return
		 * ERROR; } }
		 */
		boolean result = dbCuaHang.capnhatCuaHang(this.cuahang);
		if (result) {
			return SUCCESS;
		} else {
			return ERROR;

		}
		// System.out.println("LOI:" + TenCuaHang.length());
		// return ERROR;
	}
}
