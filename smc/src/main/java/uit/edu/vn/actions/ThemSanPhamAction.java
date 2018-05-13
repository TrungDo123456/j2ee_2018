package uit.edu.vn.actions;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.LoaiSanPham;
import uit.edu.vn.models.NhaSanXuat;
import uit.edu.vn.models.SanPham;
import uit.edu.vn.utils.DataLoaiSanPham;
import uit.edu.vn.utils.DataNhaSanXuat;
import uit.edu.vn.utils.DataSanPham;


public class ThemSanPhamAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	DataLoaiSanPham dbLoaiSanPham = new DataLoaiSanPham();
	DataNhaSanXuat dbNhaSanXuat = new DataNhaSanXuat();
	private List<LoaiSanPham> dsLoaiSanPham = new ArrayList<LoaiSanPham>();

	private List<NhaSanXuat> dsNhaSanXuat = new ArrayList<NhaSanXuat>();

	
	@Override
	public String execute() throws Exception {
		this.dsLoaiSanPham = dbLoaiSanPham.getDsLoaiSanPhamFromDb();
		this.dsNhaSanXuat = dbNhaSanXuat.getListNhaSanXuatFromDb();
		return SUCCESS;
	}


	public List<LoaiSanPham> getDsLoaiSanPham() {
		return dsLoaiSanPham;
	}


	public void setDsLoaiSanPham(List<LoaiSanPham> dsLoaiSanPham) {
		this.dsLoaiSanPham = dsLoaiSanPham;
	}


	public List<NhaSanXuat> getDsNhaSanXuat() {
		return dsNhaSanXuat;
	}


	public void setDsNhaSanXuat(List<NhaSanXuat> dsNhaSanXuat) {
		this.dsNhaSanXuat = dsNhaSanXuat;
	}

	
}
