package uit.edu.vn.models;

public class LoaiKhachHang {
	private int id;
	private String LoaiThe;
	private String MoTa;
	private Float TiLeQuyDoi;
	private int NguongQuyDoi;

	public LoaiKhachHang() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLoaiThe() {
		return LoaiThe;
	}

	public void setLoaiThe(String loaiThe) {
		LoaiThe = loaiThe;
	}

	public String getMoTa() {
		return MoTa;
	}

	public void setMoTa(String moTa) {
		MoTa = moTa;
	}

	public Float getTiLeQuyDoi() {
		return TiLeQuyDoi;
	}

	public void setTiLeQuyDoi(Float tiLeQuyDoi) {
		TiLeQuyDoi = tiLeQuyDoi;
	}

	public int getNguongQuyDoi() {
		return NguongQuyDoi;
	}

	public void setNguongQuyDoi(int nguongQuyDoi) {
		NguongQuyDoi = nguongQuyDoi;
	}

	public LoaiKhachHang(int id, String loaiThe, String mota, Float tiLeQuyDoi, int nguongQuyDoi) {
		super();
		this.id = id;
		LoaiThe = loaiThe;
		MoTa = mota;
		TiLeQuyDoi = tiLeQuyDoi;
		NguongQuyDoi = nguongQuyDoi;
	}

}
