package uit.edu.vn.actions.khachhang;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.KhachHang;
import uit.edu.vn.utils.DataKhachHang;

@SuppressWarnings("serial")
public class ChangePasswordAction extends ActionSupport {
	private String currentpassword, newpassword, email;
	private KhachHang khachhang = new KhachHang(0, 0, 0, 0, 0, null, null, null, null, null, null);
	private DataKhachHang dataKhachHang = new DataKhachHang();
	
	public String execute() throws SQLException  {
		/*if() {
			return INPUT;
		}
		else*/
		
		/*System.out.println("in change password action");
		System.out.println(currentpassword);
		System.out.println(newpassword);
		System.out.println(email);*/
		
		{
			dataKhachHang.ChangePassword(newpassword, email);
			return SUCCESS;
		}
	}

	public String getCurrentpassword() {
		return currentpassword;
	}

	public void setCurrentpassword(String currentpassword) {
		this.currentpassword = currentpassword;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
