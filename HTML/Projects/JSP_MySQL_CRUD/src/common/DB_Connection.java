package common;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {
	
	public static void main(String[] args) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		System.out.println(obj_DB_Connection.get_connection());
	}
	
	
	
	public Connection get_connection(){
		Connection connection=null;
		try {
			
			String url = "jdbc:mysql://localhost/jsp_crud?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String userName = "root";
			String password = "MEHmet.11";
		
			// load the mysql driver
			Class.forName("com.mysql.jdbc.Driver");
			
			// get the connection
			connection = DriverManager.getConnection(url, userName, password);
 		
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
		
		
		
		
	}
	
}
