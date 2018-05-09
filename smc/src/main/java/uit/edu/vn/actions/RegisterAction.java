package uit.edu.vn.actions;
import uit.edu.vn.models.*;
import uit.edu.vn.utils.*;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	
	private DataKhachHang dataKhachHang = new DataKhachHang();
	private String tenKhachHang, diaChi, soDienThoai, email, matKhau;
	private int gioiTinh;

	@Override
	public String execute() throws Exception {
		
		if(dataKhachHang.CheckKhachHang(email)) {
			return INPUT;
		}
		else
		{
			dataKhachHang.AddKhachHang(this);
			return SUCCESS;
		}

	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public int getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(int gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
}
