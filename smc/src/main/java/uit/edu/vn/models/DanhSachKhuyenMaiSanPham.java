package uit.edu.vn.models;

public class DanhSachKhuyenMaiSanPham extends LoaiSanPham {
	private Integer id;
	private Integer idKhuyenMaiSanPham;
	private Integer idMaVachSanPham;
	private Integer GiaBanMoi;
	
	
//	public DanhSachKhuyenMaiSanPham(Integer id, Integer idKhuyenMaiSanPham, Integer idMaVachSanPham,
//			Integer giaBanMoi) {
//		super();
//		this.id = id;
//		this.idKhuyenMaiSanPham = idKhuyenMaiSanPham;
//		this.idMaVachSanPham = idMaVachSanPham;
//		GiaBanMoi = giaBanMoi;
//	}
	public DanhSachKhuyenMaiSanPham(String tenLoaiSanPham, Integer giaBanMoi) {
		super(tenLoaiSanPham);
		GiaBanMoi = giaBanMoi;
	}
	public DanhSachKhuyenMaiSanPham() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getIdKhuyenMaiSanPham() {
		return idKhuyenMaiSanPham;
	}
	public void setIdKhuyenMaiSanPham(Integer idKhuyenMaiSanPham) {
		this.idKhuyenMaiSanPham = idKhuyenMaiSanPham;
	}
	public Integer getIdMaVachSanPham() {
		return idMaVachSanPham;
	}
	public void setIdMaVachSanPham(Integer idMaVachSanPham) {
		this.idMaVachSanPham = idMaVachSanPham;
	}
	public Integer getGiaBanMoi() {
		return GiaBanMoi;
	}
	public void setGiaBanMoi(Integer giaBanMoi) {
		GiaBanMoi = giaBanMoi;
	}
	
}
