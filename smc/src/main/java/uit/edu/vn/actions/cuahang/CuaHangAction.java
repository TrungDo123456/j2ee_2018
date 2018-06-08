package uit.edu.vn.actions.cuahang;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.CuaHang;
import uit.edu.vn.models.QuyenNhanVien;
import uit.edu.vn.utils.DataCuaHang;
import uit.edu.vn.utils.DataNhanVien;

public class CuaHangAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	DataCuaHang dbCuaHang = new DataCuaHang();
	private List<CuaHang> lstCuaHang = new ArrayList<CuaHang>();

	// phuc vu code them moi nhan vien cho gon
	DataNhanVien dbNhanVien = new DataNhanVien();
	private List<QuyenNhanVien> lstQuyenNhanVien = new ArrayList<QuyenNhanVien>();

	public List<QuyenNhanVien> getLstQuyenNhanVien() {
		return lstQuyenNhanVien;
	}

	public void setLstQuyenNhanVien(List<QuyenNhanVien> lstQuyenNhanVien) {
		this.lstQuyenNhanVien = lstQuyenNhanVien;
	}
	// end

	public List<CuaHang> getLstCuaHang() {
		return lstCuaHang;
	}

	public void setLstCuaHang(List<CuaHang> lstCuaHang) {
		this.lstCuaHang = lstCuaHang;
	}

	@Override
	public String execute() throws Exception {
		lstCuaHang = dbCuaHang.getLstCuaHangFromDb();
		// System.out.print(lstCuaHang.size());
		return SUCCESS;
	}

	public String getDs() throws Exception {
		lstCuaHang = dbCuaHang.getLstCuaHangFromDb();
		lstQuyenNhanVien = dbNhanVien.getLstQuyenNhanVienFromDb();
		return SUCCESS;
	}
}
