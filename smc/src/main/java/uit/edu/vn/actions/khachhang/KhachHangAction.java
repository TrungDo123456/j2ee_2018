package uit.edu.vn.actions.khachhang;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.KhachHang;
import uit.edu.vn.utils.DataKhachHang;

public class KhachHangAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	DataKhachHang dbKhachHang = new DataKhachHang();
	private List<KhachHang> lstKhachHang = new ArrayList<KhachHang>();

	public List<KhachHang> getLstKhachHang() {
		return lstKhachHang;
	}

	public void setLstKhachHang(List<KhachHang> lstKhachHang) {
		this.lstKhachHang = lstKhachHang;
	}

	public String getDs() throws Exception {
		lstKhachHang = dbKhachHang.getDsKhachHangFromDb();
		System.out.print(lstKhachHang.size());
		return SUCCESS;
	}
}
