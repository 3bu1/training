<%@page import="mainclasses.ImageListing"%>
<%@page import="beans.ImageSevice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="database.*,java.sql.PreparedStatement,java.io.*,java.util.regex.Matcher,java.util.regex.Pattern,org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.disk.DiskFileItemFactory,org.apache.commons.fileupload.*,java.util.*,java.text.*"%>
 
<%
Database db = new Database();
String userid=null;
String img = null;
String img2 = null;
String sql=null;
String assign =null;
boolean isMultipart = ServletFileUpload.isMultipartContent(request);

if (!isMultipart) {
System.out.println("File Not Uploaded");
} else {
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
	 String name = item.getFieldName();
	  String fieldvalue = item.getString();
if(name.equals("fileName")){
	
}
  	if((!fieldvalue.equals("submit")) && (!fieldvalue.equals("addmore")) && (!fieldvalue.equals("Delete"))){
  		try {
      		userid=fieldvalue;
			} catch (Exception e) {
				e.printStackTrace();
			}
  	} 
} else {

try {
String itemName = item.getName();
ImageListing il = new ImageListing();
System.out.print(itemName);
boolean xyz = il.getImageWhereImageName(itemName);

Random generator = new Random();
int r = Math.abs(generator.nextInt());
		img=Integer.toString(r);
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

} catch (Exception e) {
out.println(e.getMessage());
} 
finally {
db.getConnection().close();
}  

} catch (Exception e) {
e.printStackTrace();
}

boolean x=false;

beans.ImageSevice ImageSevice = new beans.ImageSevice();

x=ImageSevice.insert(img,img2,userid);%><%=ImageSevice.getError() %>

<%
if(x){
	 System.out.print("done");
}
}}
}

%>