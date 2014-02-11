package beans;

public class Image {
	private String image="";
	private String imageid="";
	
	public Image(){
		
	}
	
	public Image(String image, String imageid) {
		this.image=image;
		this.imageid=imageid;
	}
	
	public Image(String image) {
		this.image=image;
	}
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
	
	
}

