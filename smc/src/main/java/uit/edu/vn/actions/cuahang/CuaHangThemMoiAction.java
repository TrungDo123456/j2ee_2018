package uit.edu.vn.actions.cuahang;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.constant.MaTrangThai;
import uit.edu.vn.models.NhanVien;
import uit.edu.vn.utils.DataNhanVien;

public class CuaHangThemMoiAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	DataNhanVien dbNhanVien = new DataNhanVien();
	private List<NhanVien> dsNhanVien = new ArrayList<NhanVien>();

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
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*if(dbNhanVien.ThemMoi())
		{
			return MaTrangThai.THEM_THANH_CONG;
		}*/
		return MaTrangThai.KHOI_TAO;
		
	}
}
