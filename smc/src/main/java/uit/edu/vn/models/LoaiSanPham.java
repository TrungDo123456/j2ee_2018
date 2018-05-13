package uit.edu.vn.models;

public class LoaiSanPham {
	private Integer id;
	private String MaLoaiSanPham;
	private String TenLoaiSanPham;
	private String MoTa;
	private Integer idNganhSanPham;
		
	public LoaiSanPham(String tenLoaiSanPham) {
		super();
		TenLoaiSanPham = tenLoaiSanPham;
	}

	public LoaiSanPham() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMaLoaiSanPham() {
		return MaLoaiSanPham;
	}
	public void setMaLoaiSanPham(String maLoaiSanPham) {
		MaLoaiSanPham = maLoaiSanPham;
	}
	public String getTenLoaiSanPham() {
		return TenLoaiSanPham;
	}
	public void setTenLoaiSanPham(String tenLoaiSanPham) {
		TenLoaiSanPham = tenLoaiSanPham;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}
	public Integer getIdNganhSanPham() {
		return idNganhSanPham;
	}
	public void setIdNganhSanPham(Integer idNganhSanPham) {
		this.idNganhSanPham = idNganhSanPham;
	}
	
	
}
