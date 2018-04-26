package uit.edu.vn.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectData {
	public static Connection getConnection() throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String Url = "jdbc:mysql://localhost:3306/qlbanhang?autoReconnect=true&amp;useSSL=false";
		return DriverManager.getConnection(Url,"root","root");
	}
	public static void main(String[] args) throws SQLException {
		Connection con = ConnectData.getConnection();
		if(con !=null) {
			System.out.println("Disconnect");
		}
	}
//		Statement st =null;
//		ResultSet rs=null;
//		Connection con=null;
//		try {
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//			String Url = "jdbc:sqlserver://localhost:1433;databaseName=BOOKSTORE";
//			con = DriverManager.getConnection(Url);
//			st = con.createStatement();
//			String query = "select * from Book";
//			rs = st.executeQuery(query);
//		} catch(Exception e) {
//			e.printStackTrace();
//		}finally {
//			if(rs !=null) try {rs.close();}catch(Exception e){}
//			if(st !=null) try {st.close();}catch(Exception e){}
//			if(con !=null) try {con.close();}catch(Exception e){}
//		}			
//	}
}
