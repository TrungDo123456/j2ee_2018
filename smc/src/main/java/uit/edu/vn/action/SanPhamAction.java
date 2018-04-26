package uit.edu.vn.action;

import java.sql.SQLException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.model.SanPhamModel;
import uit.edu.vn.entities.SanPham;

public class SanPhamAction  extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	  private final SanPhamModel sanphamModel = new SanPhamModel();
	    private List<SanPham> lstSanPham;

	    public List<SanPham> getLstSanPham() {
	        return lstSanPham;
	    }

	    public void setLstSanPham(List<SanPham> lstSanPham) {
	        this.lstSanPham = lstSanPham;
	    }

	    @Override
	    public String execute() throws Exception {
	        this.lstSanPham = sanphamModel.getSanPham();
	        return SUCCESS;
	    }
}
