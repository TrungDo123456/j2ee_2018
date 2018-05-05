package uit.edu.vn.actions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import uit.edu.vn.models.CuaHang;

import uit.edu.vn.utils.ConnectData;
import uit.edu.vn.utils.DataCuaHang;

public class CuaHangAction extends ActionSupport{
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
    public String executeL() throws Exception {
		lstCuaHang = dbCuaHang.getLstCuaHangFromDb();
        return SUCCESS;
    }
}