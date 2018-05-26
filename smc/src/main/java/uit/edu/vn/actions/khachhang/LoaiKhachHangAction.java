package uit.edu.vn.actions.khachhang;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.LoaiKhachHang;
import uit.edu.vn.utils.DataLoaiKhachHang;

public class LoaiKhachHangAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	DataLoaiKhachHang dbLoaiKhachHang = new DataLoaiKhachHang();
	private List<LoaiKhachHang> lstLoaiKhachHang = new ArrayList<LoaiKhachHang>();

	public List<LoaiKhachHang> getLstLoaiKhachHang() {
		return lstLoaiKhachHang;
	}

	public void setLstLoaiKhachHang(List<LoaiKhachHang> lstLoaiKhachHang) {
		this.lstLoaiKhachHang = lstLoaiKhachHang;
	}

	public String getDs() throws Exception {
		lstLoaiKhachHang = dbLoaiKhachHang.getDsLoaiKhachHangFromDb();
		System.out.print("So loai khach hang" + lstLoaiKhachHang.size());
		return SUCCESS;
	}

	public String ThemMoi() {
		return SUCCESS;
	}
}
