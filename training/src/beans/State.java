package beans;

public class State {
	private String Country="";
	private String Countryid="";
	private String state="";
	private String stateid="";
	
	public State(){
		
	}
    public State(String state,String stateid){
		this.state=state;
		this.stateid=stateid;
	}
    public State(String stateid, String state, String countryid) {
    	this.state=state;
		this.stateid=stateid;
		this.Countryid=countryid;
	}
	public State(String country) {
		this.Country=country;
		this.state=country;
	}
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
}
