package uit.edu.vn.actions.nhanvien;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.NhanVien;
import uit.edu.vn.utils.DataNhanVien;

public class AdminLoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username, password;
	private ArrayList<NhanVien> lstNhanVien = new ArrayList<NhanVien>();
	private DataNhanVien dbNhanVien = new DataNhanVien();

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		lstNhanVien = dbNhanVien.getLstNhanVienFromDb();
		for (NhanVien nv : lstNhanVien) {
			if (nv.getTENDANGNHAP().trim().equals(this.username) && nv.getMATKHAU().trim().equals(this.password)) {
				HttpSession session = request.getSession();
				session.setAttribute("user", this.username);
				session.setMaxInactiveInterval(30 * 60);// tinh bang giay 30 phut return
				return "success";
			}
		}
		return "error";
	}
}