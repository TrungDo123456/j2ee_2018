package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import uit.edu.vn.models.KhachHang;

public class KhachHangAction {
	    public boolean getKhachhang(String email, String password) throws SQLException{ 
	    	Statement st =null;
			ResultSet rs=null;
			Connection con= ConnectData.getConnection();
			try {
				st = con.createStatement();
				String query = "select * from tbKhachhang where Email = '"+ email + "' and MatKhau = '"+ password +"'";
				rs = st.executeQuery(query);
				return rs.first();
				
			} catch(Exception e) {
				e.printStackTrace();
				return false;
			}finally {
				if(rs !=null) try {rs.close();}catch(Exception e){}
				if(st !=null) try {st.close();}catch(Exception e){}
				if(con !=null) try {con.close();}catch(Exception e){}
			}			
		}
	 

}
