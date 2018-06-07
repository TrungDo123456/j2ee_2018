package uit.edu.vn.actions.donhang;

import java.sql.SQLException;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.actions.khachhang.ValidatedLoginAction;
import uit.edu.vn.models.SanPham;
import uit.edu.vn.utils.DataDonHang;
import uit.edu.vn.utils.DataGioHang;

@SuppressWarnings("serial")
public class DonHangAction extends ActionSupport {
	DataDonHang datadonhang = new DataDonHang();
	
	public String execute() throws SQLException {
		DataGioHang giohang = (DataGioHang) ActionContext.getContext().getSession().get("giohang");
        if (giohang == null) {
        	System.out.println("gio hang null");
        }
		datadonhang.ThemDonHang(giohang);
		return SUCCESS;
	}
	
}

