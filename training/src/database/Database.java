package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

	Connection con = null;
	String url = "jdbc:mysql://192.168.10.1:3306/";
	String dbname= "trainning";
	String driver ="com.mysql.jdbc.Driver";
	String Username="root";
	String Password ="mysql";
	public Connection getConnection() {
		try{
		
	Class.forName(driver).newInstance();
	con = DriverManager.getConnection(url+dbname,Username,Password);
	
	
		}catch(Exception e){
			System.out.println("da error"+e);
			
		}
	return con;
}
}
