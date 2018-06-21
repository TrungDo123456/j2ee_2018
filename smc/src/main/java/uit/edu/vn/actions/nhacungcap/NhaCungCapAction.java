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

	public int getIdCuaHang() {
		return idCuaHang;
	}

	public void setIdCuaHang(int idCuaHang) {
		this.idCuaHang = idCuaHang;
	}

	DataCuaHang dbCuaHang = new DataCuaHang();
	private List<CuaHang> lstCuaHang = new ArrayList<CuaHang>();

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
	//
	// public String getDSCuaHang() throws SQLException {
	// lstCuaHang = dbCuaHang.getLstCuaHangFromDb();
	// return "ok";
	// }

	@Override
	public String execute() throws Exception {
		// lstCuaHang = dbCuaHang.getLstCuaHangFromDb();
		// System.out.println("chieu dai:" + lstCuaHang.size());
		System.out.println("values:" + idCuaHang);
		lstNhaCungCap = dbNhaCungCap.getListNhaCungCapFromDb(idCuaHang);
		System.out.print(lstNhaCungCap.size());
		return SUCCESS;
	}

	public NhaCungCapAction() throws SQLException {
		super();
		lstCuaHang = dbCuaHang.getLstCuaHangFromDb();
	}
}
