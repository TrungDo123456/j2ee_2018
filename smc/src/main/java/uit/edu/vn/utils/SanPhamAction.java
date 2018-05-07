package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.CuaHang;
import uit.edu.vn.models.SanPham;
<<<<<<< HEAD:smc/src/main/java/uit/edu/vn/utils/SanPhamAction.java
=======
import uit.edu.vn.utils.ConnectData;
import uit.edu.vn.utils.DataCuaHang;
>>>>>>> 735c21cfdf0aeeecdc2fffa731708c55dc27501f:smc/src/main/java/uit/edu/vn/actions/SanPhamAction.java

public class SanPhamAction {
	private static final long serialVersionUID = 1L;
	DataCuaHang dbCuaHang = new DataCuaHang();
	private List<CuaHang> lstCuaHang = new ArrayList<CuaHang>();

    public List<CuaHang> getLstCuaHang() {
		return lstCuaHang;
	}

	public void setLstCuaHang(List<CuaHang> lstCuaHang) {
		this.lstCuaHang = lstCuaHang;
	}
	
	@Override
    public String execute() throws Exception {
		lstCuaHang = dbCuaHang.getLstCuaHangFromDb();
		System.out.print(lstCuaHang.size());
        return SUCCESS;
    }
}
