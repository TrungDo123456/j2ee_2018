package uit.edu.vn.models;

public class SanPham extends MaVachSanPham {
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
<<<<<<< HEAD

	public SanPham(Integer id, String tenLoaiSanPham,String donVi,
			String moTa, Integer giaBanMoi,Integer iDMaVach, 
			Integer iDSanPhamCuaHang, Integer soLuong, Integer suDung,
			String hinhAnh, Integer giaBan,String tenSanPham) {
=======
	public SanPham(String tenSanPham) {
		super();
		TenSanPham = tenSanPham;
		// TODO Auto-generated constructor stub
	}
	public SanPham(Integer id, String tenLoaiSanPham,String donVi, String moTa, Integer giaBanMoi,Integer iDMaVach, Integer iDSanPhamCuaHang, Integer soLuong, Integer suDung, Integer giaBan,
			String tenSanPham) {
>>>>>>> 3f9b7d955000cfb7b991564bf465cde5b82e41a8
		super(tenLoaiSanPham, giaBanMoi,iDMaVach,iDSanPhamCuaHang, soLuong, suDung, giaBan);
		TenSanPham = tenSanPham;
		DonVi = donVi;
		MoTa = moTa;
		HinhAnh = hinhAnh;
		this.id=id;
	}

	@Override
	public Integer getId() {
		return id;
	}

	@Override
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

	@Override
	public String getMoTa() {
		return MoTa;
	}

	@Override
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

	@Override
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof SanPham)) {
            return false;
        }
        SanPham other = (SanPham) obj;

        return this.id == other.id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += 11 * hash + this.id;
        return hash;
    }


}
