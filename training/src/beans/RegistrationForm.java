package beans;

public class RegistrationForm {
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
	private String stateid="";
	private String address="";
	private String countryid="";
	private String gender="";
	private String extra1="";
	private String extra2="";
	private String extra3="";
	private String extra4="";
	private String extra5="";
	public RegistrationForm(){
		
	}
	public RegistrationForm(String user_id,String firstname,String lastname,String password,String email_Id,String mobile_num,String username,String state,String address,String country,String gender){
		this.user_id=user_id;
		this.firstname=firstname;
		this.lastname=lastname;
		this.password=password;
		this.email_Id=email_Id;
		this.mobile_num=mobile_num;
		this.username=username;
		this.stateid=state;
		this.address=address;
		this.countryid=country;
		this.gender=gender;
	}
	public RegistrationForm(String user_id,String firstname,String lastname,String password,String email_Id,String mobile_num,String username,String state,String address,String country,String gender,String extra1,String extra2,String extra3,String extra4,String extra5){
		this.user_id=user_id;
		this.firstname=firstname;
		this.lastname=lastname;
		this.password=password;
		this.email_Id=email_Id;
		this.mobile_num=mobile_num;
		this.username=username;
		this.stateid=state;
		this.address=address;
		this.countryid=country;
		this.gender=gender;
		this.extra1=extra1;
		this.extra2=extra2;
		this.extra3=extra3;
		this.extra4=extra4;
		this.extra5=extra5;
	}
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


	public void setstateid(String buss_name)
	{
	this.stateid = buss_name;
	}

	public String getstateid()
	{
	return (this.stateid);
	}


	public void setaddress(String address)
	{
	this.address = address;
	}

	public String getaddress()
	{
	return (this.address);
	}


	public void setcountryid(String country)
	{
	this.countryid = country;
	}

	public String getcountryid()
	{
	return (this.countryid);
	}
	
	public void setgender(String gender)
	{
	this.gender = gender;
	}

	public String getgender()
	{
	return (this.gender);
	
	}
	public void setextra1(String extra1)
	{
	this.extra1 = extra1;
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
	
}

