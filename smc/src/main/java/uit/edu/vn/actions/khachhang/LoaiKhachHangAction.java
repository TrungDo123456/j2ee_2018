package uit.edu.vn.actions.khachhang;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.LoaiKhachHang;
import uit.edu.vn.utils.DataLoaiKhachHang;

public class LoaiKhachHangAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String LoaiThe;
	private String MoTa;
	private Float TiLeQuyDoi;
	private int NguongQuyDoi;

	public String getMoTa() {
		return MoTa;
	}

	public void setMoTa(String moTa) {
		MoTa = moTa;
	}

	public String getLoaiThe() {
		return LoaiThe;
	}

	public void setLoaiThe(String loaiThe) {
		LoaiThe = loaiThe;
	}

	public Float getTiLeQuyDoi() {
		return TiLeQuyDoi;
	}

	public void setTiLeQuyDoi(Float tiLeQuyDoi) {
		TiLeQuyDoi = tiLeQuyDoi;
	}

	public int getNguongQuyDoi() {
		return NguongQuyDoi;
	}

	public void setNguongQuyDoi(int nguongQuyDoi) {
		NguongQuyDoi = nguongQuyDoi;
	}

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

	public String ThemMoi() throws SQLException {
		if (LoaiThe.length() == 0 || MoTa.length() == 0 || TiLeQuyDoi.toString().length() == 0
				|| Integer.valueOf(NguongQuyDoi).toString().length() == 0) {
			return ERROR;

		} else {
			System.out.println("mo ta :" + MoTa);
			LoaiKhachHang lkh = new LoaiKhachHang();
			lkh.setLoaiThe(LoaiThe);
			lkh.setMoTa(MoTa);
			lkh.setTiLeQuyDoi(TiLeQuyDoi);
			lkh.setNguongQuyDoi(NguongQuyDoi);
			dbLoaiKhachHang.themLoaiKhachHang(lkh);
			return SUCCESS;
		}

	}
}
