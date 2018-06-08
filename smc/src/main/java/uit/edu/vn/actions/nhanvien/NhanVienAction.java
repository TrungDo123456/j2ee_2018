package uit.edu.vn.actions.nhanvien;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.NhanVien;
import uit.edu.vn.utils.DataNhanVien;

public class NhanVienAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	DataNhanVien dbNhanVien = new DataNhanVien();
	private List<NhanVien> lstNhanVien = new ArrayList<NhanVien>();

	public NhanVienAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<NhanVien> getLstNhanVien() {
		return lstNhanVien;
	}

	public void setLstNhaCungCap(List<NhanVien> lstNhanVien) {
		this.lstNhanVien = lstNhanVien;
	}

	public List<NhanVien> getDSNV() throws SQLException {
		lstNhanVien = dbNhanVien.getLstNhanVienFromDb();
		return lstNhanVien;
	}

	@Override
	public String execute() throws Exception {
		lstNhanVien = dbNhanVien.getLstNhanVienFromDb();
		System.out.print(lstNhanVien.size());
		return SUCCESS;
	}
}
