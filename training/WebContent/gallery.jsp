<%@page import="beans.Image"%>
<%@page import="mainclasses.ImageListing"%>
<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:useBean id="Img" class="beans.Image"/>
<body>
<table cellpadding="0" cellspacing="0" border="1">
<%
mainclasses.ImageListing Il= new mainclasses.ImageListing();
 	List image_List = Il.getImageListing();
 	if(image_List.size()!=0){
 	     for (int i = 0; i < image_List.size(); i++) {
 	    	Img = (beans.Image) image_List.get(i);%>
 	    	
 	    	<form method="post" enctype="multipart/form-data" >
 	    	<tr><input type="hidden" value="<%=Img.getimage()%>" name="oldimagename" id="oldimagename"/>
 	    	<input type="hidden" value="<%=Img.getimageid() %>" name="imageid" id="imageid"/>
 	    	<td><img src="productimages/<%=Img.getimage()%>" width="100" height="100"/></td>
 	    	<td><input type="file" name="newimagename" id="newimagename"/></td>
 	    	<td><input type="submit" value="update" onclick="form.action='updateImageLogic.jsp'"/></td>
 	    	<td><input type="submit" value="delete" onclick="form.action='DeleteImageLogic.jsp'"/></td>
 	    	</tr>
 	    	</form>
 	    	<%}} %>
 	    		</table>
</body>
</html>