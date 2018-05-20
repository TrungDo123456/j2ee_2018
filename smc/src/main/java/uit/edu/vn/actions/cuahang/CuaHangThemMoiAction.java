package uit.edu.vn.actions.cuahang;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.constant.MaTrangThai;
import uit.edu.vn.models.CuaHang;
import uit.edu.vn.models.NhanVien;
import uit.edu.vn.utils.DataNhanVien;
import uit.edu.vn.utils.HamDungChung;
public class CuaHangThemMoiAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private String TenCuaHang;
	private String DiaChiCuaHang;
	private String NguoiQuanLy;
	private String SoDienThoai;
			
	private DataNhanVien dbNhanVien = new DataNhanVien();
	private List<NhanVien> dsNhanVien = new ArrayList<NhanVien>();
	
	
	public String getTenCuaHang() {
		return TenCuaHang;
	}

	public void setTenCuaHang(String tenCuaHang) {
		TenCuaHang = tenCuaHang;
	}

	public String getDiaChiCuaHang() {
		return DiaChiCuaHang;
	}

	public void setDiaChiCuaHang(String diaChiCuaHang) {
		DiaChiCuaHang = diaChiCuaHang;
	}

	public String getNguoiQuanLy() {
		return NguoiQuanLy;
	}

	public void setNguoiQuanLy(String nguoiQuanLy) {
		NguoiQuanLy = nguoiQuanLy;
	}

	public String getSoDienThoai() {
		return SoDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		SoDienThoai = soDienThoai;
	}

	public List<NhanVien> getDsNhanVien() {
		return dsNhanVien;
	}

	public void setDsNhanVien(List<NhanVien> dsNhanVien) {
		this.dsNhanVien = dsNhanVien;
	}

	public String getDSNV() {
		try {	
			System.out.println("LOI:" + dsNhanVien.size());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
	
	public String ThemMoi()
	{
		try {
			this.dsNhanVien = dbNhanVien.getLstNhanVienFromDb();
			if(!HamDungChung.KiemTraString(TenCuaHang)) return MaTrangThai.KHOI_TAO;
			if(!HamDungChung.KiemTraString(DiaChiCuaHang)) return MaTrangThai.KHOI_TAO;
			if(!HamDungChung.KiemTraString(NguoiQuanLy)) return MaTrangThai.KHOI_TAO;
			if(!HamDungChung.KiemTraString(SoDienThoai)) return MaTrangThai.KHOI_TAO;
			CuaHang ch = new CuaHang();
			ch.setNguoiQuanLy("");
			ch.setTenCuaHang(TenCuaHang);
			ch.setDiaChiCuaHang(DiaChiCuaHang);
			ch.setNguoiQuanLy(NguoiQuanLy);
			ch.setSoDienThoai(SoDienThoai);
			if(dbNhanVien.ThemMoi(ch))
			{
				return MaTrangThai.THEM_THANH_CONG;
			}
		} catch (SQLException e) {
			return MaTrangThai.LOI_LAY_DU_LIEU;
		}
		return MaTrangThai.THEM_THANH_CONG;
		
	}
}
