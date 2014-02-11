package beans;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.Database;

public class StateService {
	private String state="";
	private String stateid="";
	private String country="";
	private String countryid="";
	public void setstate(String value)
	{
		this.state=value;
	}
	public String getstate() { return state; }
	public void setstateid(String value)
	{
		this.stateid=value;
	}
	public String getstateid() { return stateid; }
	public void setCountryid(String value)
	{ 
		this.countryid=value;
		
	}
	public String getCountryid() { return countryid; }
	public boolean insertstate(){
		Database db = new Database(); 
		PreparedStatement pst = null;
		ResultSet rs=null;
		int stateid = 1000;
		try {
				String query1="select * from state";
				pst = db.getConnection().prepareStatement(query1);
				rs = pst.executeQuery();
				while(rs.next()){
					stateid = stateid+1;
				}
				String query="insert into state values(?,?,?)";
		    	pst = db.getConnection().prepareStatement(query);

		    	pst.setInt(1,stateid);
		    	pst.setString(2,state);
		    	pst.setString(3,countryid);
		     	pst.executeUpdate();
		    	pst.clearParameters(); 
				    	pst.close();
				    	return true;
		} 

		catch (Exception e) {
		     System.out.println("Error.."+e);
		     return false;
		}
		
	}
	
	
	public boolean updatestate(String state,String stateid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
			try{
				
			String query1="UPDATE state SET state = ? WHERE stateid= ?";
		
			pst = db.getConnection().prepareStatement(query1);
			pst.setString(1, state);
			pst.setString(2, stateid);
			int i = pst.executeUpdate();
			return true;
		}
		catch(Exception e){
			System.out.print(e);
			return false;
		}
			finally{
				pst.clearParameters(); 
				pst.close();
				db=null;
			}
			
	}
	
	public boolean deletestate(String stateid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
			try{
			String query1="DELETE FROM state WHERE stateid="+stateid+"";
			pst = db.getConnection().prepareStatement(query1);
			int i = pst.executeUpdate();
			return true;
		}
		catch(Exception e){
			System.out.print(e);
			return false;
		}
			finally{
				pst.clearParameters(); 
				pst.close();
				db=null;
			}
			
}
}
