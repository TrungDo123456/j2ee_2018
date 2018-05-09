package uit.edu.vn.actions;
import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import uit.edu.vn.models.SanPham;
import uit.edu.vn.utils.DataSanPham;

public class SanPhamAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	DataSanPham dbSanPham= new DataSanPham();
	private List<SanPham> lstSanPham = new ArrayList<SanPham>();
   
	private List<SanPham> lstSanPhamKhuyenMai = new ArrayList<SanPham>();

	public List<SanPham> getLstSanPhamKhuyenMai() {
		return lstSanPhamKhuyenMai;
	}
	public void setLstSanPhamKhuyenMai(List<SanPham> lstSanPhamKhuyenMai) {
		this.lstSanPhamKhuyenMai = lstSanPhamKhuyenMai;
	}
	public List<SanPham> getLstSanPham() {
		return lstSanPham;
	}
	public void setLstSanPham(List<SanPham> lstSanPham) {
		this.lstSanPham = lstSanPham;
	}
	@Override
    public String execute() throws Exception {
		this.lstSanPham = dbSanPham.getDsSanPhamFromDb();
		this.lstSanPhamKhuyenMai = dbSanPham.getDsSanPhamKhuyenMaiFromDb();
        return SUCCESS;
    }
}
