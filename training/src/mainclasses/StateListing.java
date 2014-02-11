package mainclasses;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.Database;

public class StateListing {
	
	
	public List  getstates() throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		try {
			//System.out.print(db.getConnection());
			String query1="SELECT * FROM state";
			pst = db.getConnection().prepareStatement(query1);
				ResultSet rs = pst.executeQuery();
				while(rs.next()){
				String stateid = rs.getString(1);
				String state = rs.getString(2);
				String Countryid = rs.getString(3);
				list.add(new beans.State(stateid,state,Countryid));
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
	
	public List  getstatewere(String countryid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		try {
			String query1="SELECT * FROM state WHERE countryid=?";
			pst = db.getConnection().prepareStatement(query1);
			pst.setString(1, countryid);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				String stateid = rs.getString(1);
				String state = rs.getString(2);
				String countryids = rs.getString(3);
				list.add(new beans.State(stateid,state,countryids));
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
	
	public List  getStateWereStateId(String stateid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		try {
			String query1="SELECT * FROM state WHERE stateid=?";
			pst = db.getConnection().prepareStatement(query1);
			pst.setString(1, stateid);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				String statename = rs.getString(2);
				list.add(new beans.State(statename));
			
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
}
