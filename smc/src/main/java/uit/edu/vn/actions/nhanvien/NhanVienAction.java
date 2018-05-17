package uit.edu.vn.actions.nhanvien;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.NhanVien;
import uit.edu.vn.utils.DataNhanVien;

public class NhanVienAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	DataNhanVien dbNhanVien = new DataNhanVien();
	private List<NhanVien> lstNhanVien = new ArrayList<NhanVien>();

	public List<NhanVien> getLstNhanVien() {
		return lstNhanVien;
	}

	public void setLstNhaCungCap(List<NhanVien> lstNhanVien) {
		this.lstNhanVien = lstNhanVien;
	}

	@Override
	public String execute() throws Exception {
		lstNhanVien = dbNhanVien.getLstNhanVienFromDb();
		System.out.print(lstNhanVien.size());
		return SUCCESS;
	}
}
