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
		String Url = "jdbc:mysql://localhost:3306/qlbanhang?autoReconnect=true&useSSL=false";
		
		return DriverManager.getConnection(Url,"root","root");
	}
	public static void main(String[] args) throws SQLException {
		Connection con = ConnectData.getConnection();
		if(con != null) {
			System.out.println("connected");
		}
	}
}
