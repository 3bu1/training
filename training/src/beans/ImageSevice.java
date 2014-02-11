package beans;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.Database;

public class ImageSevice {
	private String image="";
	private String imageid="";
	private String error="";
	
	
	public void setError(String value)
	{	
		this.error=value;
		
	}
	public String getError() { return error; }
	public void setimage(String value)
	{	
		this.image=value;
		
	}
	public String getimage() { return image; }
	
	public void setimageid(String value)
	{ 
		this.imageid=value;
		
	}
	public String getimageid() { return imageid; }
	
	public boolean updateImage(String image,String imageid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
			try{
			String query1="UPDATE singleimage SET  imagename= ? WHERE imageid= ?";
			pst = db.getConnection().prepareStatement(query1);
			pst.setString(1, image);
			pst.setString(2, imageid);
			int i = pst.executeUpdate();
			return true;
		}
		catch(Exception e){
			System.out.print(e);
			setError(e.getMessage());
			return false;
		}
			finally{
				pst.clearParameters(); 
				pst.close();
				db=null;
			}
			
	}
	public boolean deletecountry(String imageid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
			try{
			String query1="DELETE FROM singleimage WHERE imageid="+imageid+"";
			pst = db.getConnection().prepareStatement(query1);
			int i = pst.executeUpdate();
			return true;
		}
		catch(Exception e){
			System.out.print(e);
			setError(e.getMessage());
			return false;
		}
			finally{
				pst.clearParameters(); 
				pst.close();
				db=null;
			}
			
	}
	
	public boolean insert(String imageId,String imagename,String userid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
		
		try{
			String sql = "insert into singleimage values(?,?,?)"; 

		    pst = db.getConnection().prepareStatement(sql); 
		    pst.setString(1, imageId);
		    pst.setString(2, imagename);
		    pst.setString(3, userid);
		    int rs = pst.executeUpdate();
				
				return true;
		}
		catch (Exception e) {
			return false;
		}
		finally{
			pst.clearParameters(); 
			pst.close();
			db=null;
		}
		
	}
	
	
	
	
}
