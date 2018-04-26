package uit.edu.vn.controllers;

import java.sql.SQLException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.actions.SanPhamAction;
import uit.edu.vn.models.SanPham;

public class SanPhamController  extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	  private final SanPhamAction sanphamModel = new SanPhamAction();
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
