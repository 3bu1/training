package mainclasses;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.Database;

public class RegistrationListing {
	
	
	public List  getUserDetails() throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		
		try {
			String user_id="";
			 String firstname="";
			 String lastname="";
			 String password="";
			 String email_Id="";
			 String mobile_num="";
			 String username="";
			 String stateid="";
			 String address="";
			 String countryid="";
			 String gender="";
			String query1="SELECT * FROM registrationform";
			pst = db.getConnection().prepareStatement(query1);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				user_id=rs.getString(1);
				firstname=rs.getString(2);
				lastname=rs.getString(3);
				password=rs.getString(6);
				email_Id=rs.getString(4);
				mobile_num=rs.getString(11);
				username=rs.getString(5);
				stateid=rs.getString(10);
				address=rs.getString(8);
				countryid=rs.getString(9);
				gender=rs.getString(7);
				list.add(new beans.RegistrationForm(user_id, firstname, lastname, password, email_Id, mobile_num, username, stateid, address, countryid, gender));
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
	
	public List  getUserDetailsWhereId(String userid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		
		try {
			String user_id="";
			 String firstname="";
			 String lastname="";
			 String password="";
			 String email_Id="";
			 String mobile_num="";
			 String username="";
			 String stateid="";
			 String address="";
			 String countryid="";
			 String gender="";
			String query1="SELECT * FROM registrationform WHERE userid="+userid+"";
			pst = db.getConnection().prepareStatement(query1);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				user_id=rs.getString(1);
				firstname=rs.getString(2);
				lastname=rs.getString(3);
				password=rs.getString(6);
				email_Id=rs.getString(4);
				mobile_num=rs.getString(11);
				username=rs.getString(5);
				stateid=rs.getString(10);
				address=rs.getString(8);
				countryid=rs.getString(9);
				gender=rs.getString(7);
				list.add(new beans.RegistrationForm(user_id, firstname, lastname, password, email_Id, mobile_num, username, stateid, address, countryid, gender));
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
	
	
	public ResultSet  getUserName(String username) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ResultSet rs=null;
		ArrayList list = new ArrayList();
		try {
			String query1="SELECT * FROM registrationform WHERE UserName=?";
			pst = db.getConnection().prepareStatement(query1);
			pst.setString(1, username);
			 rs = pst.executeQuery();
		} catch (Exception e) {
			System.out.println("Exception is ;" + e);
		}
		finally{
			
		}
		return rs;
	}
}
