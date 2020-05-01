package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import common.DB_Connection;

public class Insert_Values {
	
	
	public void insert_values(String sl_no,String user_name,String email,String mobile){
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		
		try {
			
		
		
		String query="insert into user(sl_no,user_name,email,mobile) values(?,?,?,?)";
		 ps=connection.prepareStatement(query);
		 ps.setString(1, sl_no);
		 ps.setString(2, user_name);
		 ps.setString(3, email);
		 ps.setString(4, mobile);
		 
		 ps.executeUpdate();
		 
		 
		 
		 
		} catch (Exception e) {
			System.err.println(e);
		}
		 
	}
	
	
	

}
