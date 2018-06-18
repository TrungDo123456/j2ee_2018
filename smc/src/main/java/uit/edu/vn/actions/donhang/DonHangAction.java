package uit.edu.vn.actions.donhang;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.actions.khachhang.ValidatedLoginAction;
import uit.edu.vn.models.SanPham;
import uit.edu.vn.models.ChiTietDonHang;
import uit.edu.vn.models.DonHang;
import uit.edu.vn.utils.DataDonHang;
import uit.edu.vn.utils.DataGioHang;

@SuppressWarnings("serial")
public class DonHangAction extends ActionSupport {
	DataDonHang datadonhang = new DataDonHang();
	private List<DonHang> lstDonHang = new ArrayList<DonHang>();
	private List<ChiTietDonHang> lstChiTietDonHang = new ArrayList<ChiTietDonHang>();
	private int idDonHang;
	
	public int getIdDonHang() {
		return idDonHang;
	}

	public void setIdDonHang(int idDonHang) {
		this.idDonHang = idDonHang;
	}

	public List<ChiTietDonHang> getLstChiTietDonHang() {
		return lstChiTietDonHang;
	}

	public void setLstChiTietDonHang(List<ChiTietDonHang> lstChiTietDonHang) {
		this.lstChiTietDonHang = lstChiTietDonHang;
	}

	public List<DonHang> getLstDonHang() {
		return lstDonHang;
	}

	public void setLstDonHang(List<DonHang> lstDonHang) {
		this.lstDonHang = lstDonHang;
	}

	public String execute() throws SQLException {
		DataGioHang giohang = (DataGioHang) ActionContext.getContext().getSession().get("giohang");
        if (giohang == null) {
        	System.out.println("gio hang null");
        }
        else {
		datadonhang.ThemDonHang(giohang);
		giohang = null;
		ActionContext.getContext().getSession().put("giohang", giohang);
        }
		return SUCCESS;
	}
	public String getDonHang() throws SQLException{
		this.lstDonHang = datadonhang.getDsDonHangFromDb();
		return SUCCESS;
	}
	public String getChiTietDonHang() throws SQLException{
		this.lstChiTietDonHang = datadonhang.getChiTietDonHangFromDb(this.idDonHang);
		return SUCCESS;
	}
}

