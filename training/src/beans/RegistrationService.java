package beans;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.Database;

public class RegistrationService {
	private String error="";
	 public void seterror(String error)
	{
	this.error=error;
	}
	public String geterror()
	{
	return this.error;
	}
	private String user_id="";
	private String firstname="";
	private String lastname="";
	private String password="";
	private String email_Id="";
	private String mobile_num="";
	private String username="";
	private String state="";
	private String address="";
	private String country="";
	private String gender="";
	private String extra1="";
	private String extra2="";
	private String extra3="";
	private String extra4="";
	private String extra5="";
	
	public void setuser_id(String user_id)
	{
	this.user_id = user_id;
	}

	public String getuser_id()
	{
	return (this.user_id);
	}


	public void setfirstname(String firstname)
	{
	this.firstname = firstname;
	}

	public String getfirstname()
	{
	return (this.firstname);
	}

	public void setlastname(String lastname)
	{
	this.lastname = lastname;
	}

	public String getlastname()
	{
	return (this.lastname);
	}


	public void setpassword(String password)
	{
	this.password = password;
	}

	public String getpassword()
	{
	return (this.password);
	}

	public void setemail_Id(String email_id)
	{
	this.email_Id = email_id;
	}

	public String getemail_Id()
	{
	return (this.email_Id);
	}


	public void setmobile_num(String mobile_num)
	{
	this.mobile_num = mobile_num;
	}

	public String getmobile_num()
	{
	return (this.mobile_num);
	}


	public void setusername(String landline)
	{
	this.username = landline;
	}

	public String getusername()
	{
	return (this.username);
	}


	public void setstate(String buss_name)
	{
	this.state = buss_name;
	}

	public String getstate()
	{
	return (this.state);
	}


	public void setaddress(String address)
	{
	this.address = address;
	}

	public String getaddress()
	{
	return (this.address);
	}
	public void setcountry(String country)
	{
	this.country = country;
	}

	public String getcountry()
	{
	return (this.country);
	}
	public void setgender(String gender)
	{
	this.gender = gender;
	}

	public String getgender()
	{
	return (this.gender);
	
	}
	public String getextra1()
	{
	return (this.extra1);
	
	}
	public void setextra2(String extra2)
	{
	this.extra2 = extra2;
	}

	public String getextra2()
	{
	return (this.extra2);
	
	}
	public void setextra3(String extra3)
	{
	this.extra3 = extra3;
	}

	public String getextra3()
	{
	return (this.extra3);
	
	}
	public void setextra4(String extra4)
	{
	this.extra4 = extra4;
	}

	public String getextra4()
	{
	return (this.extra4);
	
	}
	public void setextra5(String extra5)
	{
	this.extra5= extra5;
	}

	public String getextra5()
	{
	return (this.extra5);
	
	}
	public boolean insert() throws SQLException
	{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ResultSet rs=null;
		int userid = 700;
		try {
			String query1="select * from registrationform";
			pst = db.getConnection().prepareStatement(query1);
			rs = pst.executeQuery();
			while(rs.next()){
				userid = userid+1;
			}
			String query="insert into registrationform values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
	    	pst = db.getConnection().prepareStatement(query);
	    	pst.setInt(1,userid);
	    	pst.setString(2,firstname);
	    	pst.setString(3,lastname);
	    	pst.setString(4,email_Id);
	    	pst.setString(5,username);
	    	pst.setString(6,password);
	    	pst.setString(7,gender);
	    	pst.setString(8,address);
	    	pst.setString(9,country);
	    	pst.setString(10,state);
	    	pst.setString(11,mobile_num);
	    	pst.setString(12,extra1);
	    	pst.setString(13,extra2);
	    	pst.setString(14,extra3);
	    	pst.setString(15,extra4);
	    	pst.setString(16,extra5);
	     	pst.executeUpdate();
	     	return true;
		
	}catch(Exception e){
		this.seterror(e.toString());
	return false;
	}
		finally{
			pst.clearParameters(); 
			pst.close();
			db=null;
		}
}
	
	public boolean updateuser(String userid,String Firstname,String Lastname,String email,String UserName,String Password,String Gender,String Address,String Country,String State,String phonenumuber) throws SQLException
	{
		Database db = new Database(); 
		PreparedStatement pst = null;
		ResultSet rs=null;
		try {
			String query1="UPDATE registrationform SET Firstname=?, Lastname=?, email=?, UserName=?, Password=?, Gender=?, Address=?, Country=?, State=?, phonenumuber=?"+" WHERE userid= ?";
			pst = db.getConnection().prepareStatement(query1);
			
	    	pst.setString(1,Firstname);
	    	pst.setString(2,Lastname);
	    	pst.setString(3,email);
	    	pst.setString(4,UserName);
	    	pst.setString(5,Password);
	    	pst.setString(6,Gender);
	    	pst.setString(7,Address);
	    	pst.setString(8,Country);
	    	pst.setString(9,State);
	    	pst.setString(10,phonenumuber);
	    	pst.setString(11, userid);
			int i = pst.executeUpdate();
			
	     	return true;
		
	}catch(Exception e){
		System.out.println(e+" here");
		this.seterror(e.toString());
	return false;
	}
		finally{
			pst.clearParameters(); 
			pst.close();
			db=null;
		}
}
	
	public boolean deleteUser(String userid) throws SQLException{
		Database db = new Database(); 
		PreparedStatement pst = null;
			try{
			String query1="DELETE FROM registrationform WHERE userid="+userid+"";
			pst = db.getConnection().prepareStatement(query1);
			int i = pst.executeUpdate();
			return true;
		}
		catch(Exception e){
			System.out.print(e);
			seterror(e.getMessage());
			return false;
		}
			finally{
				pst.clearParameters(); 
				pst.close();
				db=null;
			}
			
	}
	
	
	}

