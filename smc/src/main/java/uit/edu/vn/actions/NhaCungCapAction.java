package uit.edu.vn.actions;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.NhaCungCap;
import uit.edu.vn.utils.DataNhaCungCap;

public class NhaCungCapAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
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
		lstNhaCungCap = dbNhaCungCap.getListNhaCungCapFromDb();
		System.out.print(lstNhaCungCap.size());
		return SUCCESS;
	}
}
