package uit.edu.vn.actions.nhacungcap;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.CuaHang;
import uit.edu.vn.models.NhaCungCap;
import uit.edu.vn.utils.DataCuaHang;
import uit.edu.vn.utils.DataNhaCungCap;

public class NhaCungCapAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	int idCuaHang;
	private String TenNhaCungCap, DiaChi, SoDienThoai;

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

	public int getIdCuaHang() {
		return idCuaHang;
	}

	public void setIdCuaHang(int idCuaHang) {
		this.idCuaHang = idCuaHang;
	}

	DataCuaHang dbCuaHang = new DataCuaHang();
	private List<CuaHang> lstCuaHang = new ArrayList<CuaHang>();
	// DataNhaCungCap dbNhaCungCap = new DataNhaCungCap();

	public List<CuaHang> getLstCuaHang() {
		return lstCuaHang;
	}

	public void setLstCuaHang(List<CuaHang> lstCuaHang) {
		this.lstCuaHang = lstCuaHang;
	}

	DataNhaCungCap dbNhaCungCap = new DataNhaCungCap();
	private List<NhaCungCap> lstNhaCungCap = new ArrayList<NhaCungCap>();

	public List<NhaCungCap> getLstNhaCungCap() {
		return lstNhaCungCap;
	}

	public void setLstNhaCungCap(List<NhaCungCap> lstNhaCungCap) {
		this.lstNhaCungCap = lstNhaCungCap;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("values:" + idCuaHang);
		lstNhaCungCap = dbNhaCungCap.getListNhaCungCapFromDb(idCuaHang);
		System.out.print(lstNhaCungCap.size());
		return SUCCESS;
	}

	public NhaCungCapAction() throws SQLException {
		super();
		lstCuaHang = dbCuaHang.getLstCuaHangFromDb();
	}

	public String themNhaCungCap() {
		if (TenNhaCungCap.length() == 0 || DiaChi.length() == 0 || SoDienThoai.length() == 0) {
			return ERROR;
		} else {
			System.out.println("ten nha cung cap:" + TenNhaCungCap);
			NhaCungCap ncc = new NhaCungCap();
			ncc.setTenNhaCungCap(TenNhaCungCap);
			ncc.setDiaChi(DiaChi);
			ncc.setSoDienThoai(SoDienThoai);
			ncc.setIdCuaHang(idCuaHang);
			dbNhaCungCap.themNhaCungCap(ncc);
			return SUCCESS;
		}
	}
}
