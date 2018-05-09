package uit.edu.vn.models;

public class MaVachSanPham extends DanhSachKhuyenMaiSanPham{
	private Integer id;
	private String MaVach;
	private Integer idNhaCungCap;
	private Integer SoLuong;
	private Integer SuDung;
	private Integer GiaBan;
	private String LanSuaCuoi;
	private Integer idNhanVien;
	private String GhiChuThayDoi;
	private Integer GiaNhap;
	private Integer HetBan;
	private Integer KhongTichluyDiem;
	private Integer idSanPhamCuaHang;
	private String NgayTao;
	
	
	public MaVachSanPham() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MaVachSanPham(String tenLoaiSanPham, Integer giaBanMoi) {
		super(tenLoaiSanPham, giaBanMoi);
		// TODO Auto-generated constructor stub
	}
	public MaVachSanPham(String tenLoaiSanPham, Integer giaBanMoi, Integer soLuong, Integer suDung, Integer giaBan) {
		super(tenLoaiSanPham, giaBanMoi);
		SoLuong = soLuong;
		SuDung = suDung;
		GiaBan = giaBan;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMaVach() {
		return MaVach;
	}
	public void setMaVach(String maVach) {
		MaVach = maVach;
	}
	public Integer getIdNhaCungCap() {
		return idNhaCungCap;
	}
	public void setIdNhaCungCap(Integer idNhaCungCap) {
		this.idNhaCungCap = idNhaCungCap;
	}
	public Integer getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(Integer soLuong) {
		SoLuong = soLuong;
	}
	public Integer getSuDung() {
		return SuDung;
	}
	public void setSuDung(Integer suDung) {
		SuDung = suDung;
	}
	public Integer getGiaBan() {
		return GiaBan;
	}
	public void setGiaBan(Integer giaBan) {
		GiaBan = giaBan;
	}
	public String getLanSuaCuoi() {
		return LanSuaCuoi;
	}
	public void setLanSuaCuoi(String lanSuaCuoi) {
		LanSuaCuoi = lanSuaCuoi;
	}
	public Integer getIdNhanVien() {
		return idNhanVien;
	}
	public void setIdNhanVien(Integer idNhanVien) {
		this.idNhanVien = idNhanVien;
	}
	public String getGhiChuThayDoi() {
		return GhiChuThayDoi;
	}
	public void setGhiChuThayDoi(String ghiChuThayDoi) {
		GhiChuThayDoi = ghiChuThayDoi;
	}
	public Integer getGiaNhap() {
		return GiaNhap;
	}
	public void setGiaNhap(Integer giaNhap) {
		GiaNhap = giaNhap;
	}
	public Integer getHetBan() {
		return HetBan;
	}
	public void setHetBan(Integer hetBan) {
		HetBan = hetBan;
	}
	public Integer getKhongTichluyDiem() {
		return KhongTichluyDiem;
	}
	public void setKhongTichluyDiem(Integer khongTichluyDiem) {
		KhongTichluyDiem = khongTichluyDiem;
	}
	public Integer getIdSanPhamCuaHang() {
		return idSanPhamCuaHang;
	}
	public void setIdSanPhamCuaHang(Integer idSanPhamCuaHang) {
		this.idSanPhamCuaHang = idSanPhamCuaHang;
	}
	public String getNgayTao() {
		return NgayTao;
	}
	public void setNgayTao(String ngayTao) {
		NgayTao = ngayTao;
	}
	
	
	
	
}
