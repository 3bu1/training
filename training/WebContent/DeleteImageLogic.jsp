<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="database.*,java.sql.PreparedStatement,java.io.*,java.util.regex.Matcher,java.util.regex.Pattern,org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.disk.DiskFileItemFactory,org.apache.commons.fileupload.*,java.util.*,java.text.*"%>
 
    <%
Database db = new Database();
String img = null;
String img2 = null;
String sql=null;

boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart) {
System.out.println("File Not Uploaded");
} else {
	int k=0;
	
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try {
items = upload.parseRequest(request);
} catch (FileUploadException e) {
e.printStackTrace();
}
Iterator itr = items.iterator();
while (itr.hasNext()) {
	FileItem item = (FileItem) itr.next();

if (item.isFormField()){
	String fieldvalue = item.getString();
	if((!fieldvalue.equals("update")) && (!fieldvalue.equals("delete"))){
  		try {
      		img=fieldvalue;
      		File fileold = new File("D:/workspaceTraining/training/WebContent/"+"productimages\\"+img);
      		fileold.delete();
  		} catch (Exception e) {
				e.printStackTrace();
			}
}
	}
	else 
	{
try {
		
String itemName = item.getName();
Random generator = new Random();
int r = Math.abs(generator.nextInt());
String reg = "[.*]";
String replacingtext = "";
Pattern pattern = Pattern.compile(reg);
Matcher matcher = pattern.matcher(itemName);
StringBuffer buffer = new StringBuffer();
while (matcher.find()) {
matcher.appendReplacement(buffer, replacingtext);
}
int IndexOf = itemName.indexOf("."); 
String domainName = itemName.substring(IndexOf);
String finalimage = buffer.toString()+"_"+r+domainName;
File savedFile = new File("D:/workspaceTraining/training/WebContent/"+"productimages\\"+finalimage);
item.write(savedFile);
try {

	 
  img2=finalimage;
  //System.out.print(img2);
  
} catch (Exception e) {
out.println(e.getMessage());
} 
finally {
db.getConnection().close();
}  
} catch (Exception e) {
e.printStackTrace();
}
}
}
}

%>
<%
boolean x=false;

%>
<jsp:useBean id="imageUpdate" class="beans.ImageSevice">
<%x=imageUpdate.deletecountry(img);%>
</jsp:useBean>
<% 
if(x){
	//System.out.println("done");
}
%>
    
    