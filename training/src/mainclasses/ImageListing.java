package mainclasses;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.Database;

public class ImageListing {
	public List  getImageListing() throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		try {
			
			String query1="SELECT * FROM singleimage";
			pst = db.getConnection().prepareStatement(query1);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				String imageid = rs.getString(1);
				String imagename = rs.getString(2);
				list.add(new beans.Image(imagename, imageid));
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
	
	public List  getImageWhereUserId(String userid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		try {
			
			String query1="SELECT * FROM singleimage WHERE userid=?";
			pst = db.getConnection().prepareStatement(query1);
			pst.setString(1, userid);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				String imageid = rs.getString(1);
				String imagename = rs.getString(2);
				list.add(new beans.Image(imagename, imageid));
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
	
	public boolean  getImageWhereImageName(String ImageName) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ArrayList list = new ArrayList();
		boolean fact=false;
		try {
			
			String query1="SELECT * FROM singleimage WHERE imagename=?";
			pst = db.getConnection().prepareStatement(query1);
			pst.setString(1, ImageName);
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				fact=true;
}else{
	
	fact=false;
}
		} catch (Exception e) {
			System.out.println("Exception is ;" + e);
		}
		finally{
			pst.clearParameters();
			pst.close();
			db=null;
		}
		return fact;
	}
	
	
	
}
