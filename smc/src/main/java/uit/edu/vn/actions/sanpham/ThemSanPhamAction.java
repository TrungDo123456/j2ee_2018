package uit.edu.vn.actions.sanpham;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.utils.DataLoaiSanPham;
import uit.edu.vn.utils.DataNhaSanXuat;
import uit.edu.vn.utils.DataSanPham;
import uit.edu.vn.models.LoaiSanPham;
import uit.edu.vn.models.NhaSanXuat;
import uit.edu.vn.models.SanPham;
import uit.edu.vn.utils.DataLoaiSanPham;
import uit.edu.vn.utils.DataNhaSanXuat;
import uit.edu.vn.utils.HamDungChung;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ThemSanPhamAction extends ActionSupport implements ServletResponseAware, ServletRequestAware {
	DataLoaiSanPham dbLoaiSanPham = new DataLoaiSanPham();

	DataNhaSanXuat dbNhaSanXuat = new DataNhaSanXuat();

	private List<LoaiSanPham> dsLoaiSanPham = new ArrayList<LoaiSanPham>();

	private List<NhaSanXuat> dsNhaSanXuat = new ArrayList<NhaSanXuat>();

	private File userImage;
	private String userImageContentType;
	private String userImageFileName;
	private String CodeSanPham = "@@@@@";
	private String TenSanPham = "Tên sản phẩm";
	private String DonVi = "Đơn vị";
	private String MoTa = "Mô tả sản phẩm";
	protected HttpServletResponse servletResponse;

	public void setServletResponse(HttpServletResponse servletResponse) {
		this.servletResponse = servletResponse;
	}

	protected HttpServletRequest servletRequest;

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public String execute() throws SQLException {
		this.CodeSanPham = servletRequest.getParameter("CodeSanPham");  
		this.dsLoaiSanPham = dbLoaiSanPham.getDsLoaiSanPhamFromDb();
		this.dsNhaSanXuat = dbNhaSanXuat.getListNhaSanXuatFromDb();
		if (!HamDungChung.KiemTraString(userImageFileName))
			userImageFileName = "photo.gif";
		try {
			String filePath = ServletActionContext.getServletContext().getRealPath("/").concat("/sources/images");
			File fileToCreate;
			fileToCreate = new File(filePath, userImageFileName);
			FileUtils.copyFile(userImage, fileToCreate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Cookie cookCodeSanPham = new Cookie("CodeSanPham", CodeSanPham);
		servletResponse.addCookie(cookCodeSanPham);
		return "success";
	}
	public String taoMoi()
	{
		DataSanPham db = new DataSanPham();
		SanPham sp = new SanPham();
		sp.setCodeSanPham(Integer.parseInt(this.CodeSanPham));
		sp.setDonVi(DonVi);
		sp.setHinhAnh(userImageFileName);
		db.themSanPham(sp);
		return "success";
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

	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

	public String getCodeSanPham() {
		return CodeSanPham;
	}

	public void setCodeSanPham(String codeSanPham) {
		CodeSanPham = codeSanPham;		
	}

	public String getTenSanPham() {
		return TenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		TenSanPham = tenSanPham;
		Cookie cookTenSanPham = new Cookie("TenSanPham", TenSanPham);
		servletResponse.addCookie(cookTenSanPham);
	}

	public String getDonVi() {
		return DonVi;
	}

	public void setDonVi(String donVi) {
		DonVi = donVi;
		Cookie cookDonVi = new Cookie("DonVi", DonVi);
		servletResponse.addCookie(cookDonVi);
	}

	public String getMoTa() {
		return MoTa;
	}

	public void setMoTa(String moTa) {
		MoTa = moTa;
		Cookie cookMoTa = new Cookie("MoTa", MoTa);
		servletResponse.addCookie(cookMoTa);
	}
}