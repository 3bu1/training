package beans;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.Database;

public class CountryService {
	private String country=null;
	private String countryid="";
	private String state="";
	private String stateid="";
	private String error="";
	
	
	public void setError(String value)
	{	
		this.error=value;
		
	}
	public String getError() { return error; }
	
	public void setcountry(String value)
	{	
		this.country=value;
		
	}
	public String getCountry() { return country; }
	
	public void setCountryid(String value)
	{ 
		this.countryid=value;
		
	}
	public String getCountryid() { return countryid; }
	
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
	
	public boolean insert(){
		Database db = new Database(); 
		PreparedStatement pst = null;
		ResultSet rs=null;
		int countryid = 1300;
		try {
			String query1="select * from country";
			pst = db.getConnection().prepareStatement(query1);
			rs = pst.executeQuery();
			while(rs.next()){
				countryid = countryid+1;
			}
			String query="insert into country values(?,?)";
	    	pst = db.getConnection().prepareStatement(query);

	    	pst.setInt(1,countryid);
	    	pst.setString(2,country);
	     	pst.executeUpdate();
	     	return true;
		} catch (Exception e) {

			setError(e.getMessage());
			//System.out.println("Error is "+e.getMessage());
			return false;
		}
		finally{
			try {
				pst.clearParameters(); 
				pst.close();
				db=null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	
	
	public boolean deletecountry(String countryid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
			try{
			String query1="DELETE FROM country WHERE countryid="+countryid+"";
			pst = db.getConnection().prepareStatement(query1);
			int i = pst.executeUpdate();
			return true;
		}
		catch(Exception e){
			//System.out.print(e);
			setError(e.getMessage());
			return false;
		}
			finally{
				pst.clearParameters(); 
				pst.close();
				db=null;
			}
			
	}
	
	public boolean updatecountry(String country,String countryid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
			try{
				
			String query1="UPDATE country SET country = ? WHERE countryid= ?";
			pst = db.getConnection().prepareStatement(query1);
			pst.setString(1, country);
			pst.setString(2, countryid);
			int i = pst.executeUpdate();
			return true;
		}
		catch(Exception e){
			//System.out.print(e);
			setError(e.getMessage());
			return false;
		}
			finally{
				pst.clearParameters(); 
				pst.close();
				db=null;
			}
			
	}
	}

