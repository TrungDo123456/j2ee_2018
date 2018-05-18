package uit.edu.vn.actions.cuahang;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.NhanVien;
import uit.edu.vn.utils.DataNhanVien;

public class CuaHangThemMoiAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	DataNhanVien dbNhanVien = new DataNhanVien();
	private List<NhanVien> dsNhanVien = new ArrayList<NhanVien>();

	public DataNhanVien getDbNhanVien() {
		return dbNhanVien;
	}

	public void setDbNhanVien(DataNhanVien dbNhanVien) {
		this.dbNhanVien = dbNhanVien;
	}

	public List<NhanVien> getDsNhanVien() {
		return dsNhanVien;
	}

	public void setDsNhanVien(List<NhanVien> dsNhanVien) {
		this.dsNhanVien = dsNhanVien;
	}

	public String getDSNV() {
		try {
			this.dsNhanVien = dbNhanVien.getLstNhanVienFromDb();
			System.out.println("LOI:" + dsNhanVien.size());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}
