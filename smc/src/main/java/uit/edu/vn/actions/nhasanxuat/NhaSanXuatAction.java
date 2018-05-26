package uit.edu.vn.actions.nhasanxuat;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.NhaSanXuat;
import uit.edu.vn.utils.DataNhaSanXuat;

public class NhaSanXuatAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	DataNhaSanXuat dbNhaSanXuat = new DataNhaSanXuat();
	private List<NhaSanXuat> lstNhaSanXuat = new ArrayList<NhaSanXuat>();

	public List<NhaSanXuat> getLstNhaSanXuat() {
		return lstNhaSanXuat;
	}

	public void setLstNhaSanXuat(List<NhaSanXuat> lstNhaSanXuat) {
		this.lstNhaSanXuat = lstNhaSanXuat;
	}

	@Override
	public String execute() throws Exception {
		lstNhaSanXuat = dbNhaSanXuat.getListNhaSanXuatFromDb();
		System.out.print(lstNhaSanXuat.size());
		return SUCCESS;
	}

	public String ThemMoi() {
		return SUCCESS;
	}
}
