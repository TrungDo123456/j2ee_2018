package uit.edu.vn.models;

public class SanPham {
	private Integer id;
	private Integer CodeSanPham;
	private String TenSanPham;
	private String DonVi;
	private String MoTa;
	private Integer idLoaiSanPham;
	private String HinhAnh;
	private Integer idNhaSanXuat;
	
	public SanPham(Integer id, Integer codeSanPham, String tenSanPham, String donVi, String moTa, Integer idLoaiSanPham,
			String hinhAnh, Integer idNhaSanXuat) {
		super();
		this.id = id;
		CodeSanPham = codeSanPham;
		TenSanPham = tenSanPham;
		DonVi = donVi;
		MoTa = moTa;
		this.idLoaiSanPham = idLoaiSanPham;
		HinhAnh = hinhAnh;
		this.idNhaSanXuat = idNhaSanXuat;
	}

	public SanPham() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCodeSanPham() {
		return CodeSanPham;
	}

	public void setCodeSanPham(Integer codeSanPham) {
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

	public Integer getIdLoaiSanPham() {
		return idLoaiSanPham;
	}

	public void setIdLoaiSanPham(Integer idLoaiSanPham) {
		this.idLoaiSanPham = idLoaiSanPham;
	}

	public String getHinhAnh() {
		return HinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		HinhAnh = hinhAnh;
	}

	public Integer getIdNhaSanXuat() {
		return idNhaSanXuat;
	}

	public void setIdNhaSanXuat(Integer idNhaSanXuat) {
		this.idNhaSanXuat = idNhaSanXuat;
	}
	
	
	



	
	
}