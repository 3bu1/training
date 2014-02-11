package beans;

public class Country {

	private String Country="";
	private String Countryid="";
	private String state="";
	private String stateid="";
	public Country(){
		
	}
	public Country(String Country,String Countryid,String state,String stateid){
		this.Country=Country;
		this.Countryid=Countryid;
		this.state=state;
		this.stateid=stateid;
	}
	public Country(String Country, String Countryid) {
		this.Country=Country;
		this.Countryid=Countryid;
	}
	public Country(String stateid, String state,String countryid) {
		this.state=state;
		this.stateid=stateid;
		this.Countryid=countryid;
	}
	public Country(String country) {
		this.Country=country;
	}
	public void setCountry(String value)
	{	
		this.Country=value;
		
	}
	public String getCountry() { return Country; }
	
	public void setCountryid(String value)
	{ 
		this.Countryid=value;
		
	}
	public String getCountryid() { return Countryid; }
	
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
}
