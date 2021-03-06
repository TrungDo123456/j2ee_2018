package uit.edu.vn.actions.khachhang;
import uit.edu.vn.models.*;
import uit.edu.vn.utils.*;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	
	private KhachHang khachhang = new KhachHang(0, 0, 0, 0, 0, null, null, null, null, null, null);
	private DataKhachHang dataKhachHang = new DataKhachHang();
	

	@Override
	public String execute() throws Exception {
		
		if(dataKhachHang.CheckKhachHang(khachhang.getEmail())) {
			return INPUT;
		}
		else
		{
			dataKhachHang.AddKhachHang(khachhang);
			return SUCCESS;
		}

	}


	public KhachHang getKhachhang() {
		return khachhang;
	}


	public void setKhachhang(KhachHang khachhang) {
		this.khachhang = khachhang;
	}

	
}
