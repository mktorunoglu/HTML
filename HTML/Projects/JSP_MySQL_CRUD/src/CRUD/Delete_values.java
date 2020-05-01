package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import common.User_Bean;

public class Delete_values {

	
	public void delete_value(String sl_no){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
	 
		 
		 
		try {
			String querry="delete from user where sl_no=?";
			ps=connection.prepareStatement(querry);		
			ps.setString(1, sl_no);;
			ps.executeUpdate();
			
			
			 
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		 
		
		
	}

}
