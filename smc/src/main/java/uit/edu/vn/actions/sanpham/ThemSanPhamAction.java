package uit.edu.vn.actions.sanpham;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.LoaiSanPham;
import uit.edu.vn.models.NhaSanXuat;
import uit.edu.vn.utils.DataLoaiSanPham;
import uit.edu.vn.utils.DataNhaSanXuat;
import uit.edu.vn.utils.HamDungChung;

public class ThemSanPhamAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	DataLoaiSanPham dbLoaiSanPham = new DataLoaiSanPham();

	DataNhaSanXuat dbNhaSanXuat = new DataNhaSanXuat();

	private List<LoaiSanPham> dsLoaiSanPham = new ArrayList<LoaiSanPham>();

	private List<NhaSanXuat> dsNhaSanXuat = new ArrayList<NhaSanXuat>();

	private File userImage;
	private String userImageContentType;
	private String userImageFileName;
	private String CodeSanPham = "11111";
	private String TenSanPham;
	private String DonVi;
	private String MoTa;

	@Override
	public String execute() throws Exception {
		this.dsLoaiSanPham = dbLoaiSanPham.getDsLoaiSanPhamFromDb();
		this.dsNhaSanXuat = dbNhaSanXuat.getListNhaSanXuatFromDb();
		CodeSanPham = "aaaa";
		if (!HamDungChung.KiemTraString(userImageFileName))
			userImageFileName = "photo.gif";
		try {
			String filePath = ServletActionContext.getServletContext().getRealPath("/").concat("/sources/images");
			File fileToCreate;
			fileToCreate = new File(filePath, userImageFileName);
			FileUtils.copyFile(userImage, fileToCreate);
			//return "SUCCESS2";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	// TODO: Hàm này không sài nên đóng tạm
	/*
	 * public String getDs() { try { this.dsLoaiSanPham =
	 * dbLoaiSanPham.getDsLoaiSanPhamFromDb(); this.dsNhaSanXuat =
	 * dbNhaSanXuat.getListNhaSanXuatFromDb(); return SUCCESS; } catch(Exception e)
	 * { e.printStackTrace(); return ERROR; } }
	 */

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
	}

	public String getDonVi() {
		return DonVi;
	}

	public void setDonVi(String donVi) {
		DonVi = donVi;
	}

	public String getMoTa() {
		return MoTa;
	}

	public void setMoTa(String moTa) {
		MoTa = moTa;
	}

}
