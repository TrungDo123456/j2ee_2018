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
	String TenNhaSanXuat, DiaChi, GhiChu;

	public String getTenNhaSanXuat() {
		return TenNhaSanXuat;
	}

	public void setTenNhaSanXuat(String tenNhaSanXuat) {
		TenNhaSanXuat = tenNhaSanXuat;
	}

	public String getDiaChi() {
		return DiaChi;
	}

	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}

	public String getGhiChu() {
		return GhiChu;
	}

	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}

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
		if (TenNhaSanXuat.length() == 0 || DiaChi.length() == 0) {
			return ERROR;
		} else {
			NhaSanXuat nsx = new NhaSanXuat();
			nsx.setTenNhaSanXuat(TenNhaSanXuat);
			nsx.setDiaChi(DiaChi);
			nsx.setGhiChu(GhiChu);
			dbNhaSanXuat.themNhaSanXuat(nsx);
			return SUCCESS;
		}

	}
}
