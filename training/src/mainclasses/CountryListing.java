package mainclasses;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import beans.CountryService;


import database.Database;

public class CountryListing {
	
	
	public List  getcountry() throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		try {
			
			String query1="SELECT * FROM country";
			pst = db.getConnection().prepareStatement(query1);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				String Countryid = rs.getString(1);
				String Country = rs.getString(2);
				list.add(new beans.Country(Country, Countryid));
}
		} catch (Exception e) {
			System.out.println("Exception is ;" + e);
		}
		finally{
			pst.clearParameters();
			pst.close();
			db=null;
		}
		return list;
	}
	
	public List  getcountrywhere(String countryid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		try {
			
			String query1="SELECT * FROM country WHERE countryid='"+countryid+"'";
			pst = db.getConnection().prepareStatement(query1);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				
				String country = rs.getString(2);
				list.add(new beans.Country(country));
				
}
			
		} catch (Exception e) {
			System.out.println("Exception is " + e);
			e.printStackTrace();
		}
		finally{
			pst.clearParameters();
			pst.close();
			db=null;
		}
		return list;
	}
	
	
	
	
}
