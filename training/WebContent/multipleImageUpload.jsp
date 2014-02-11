<%@page import="beans.Image"%>
<%@page import="mainclasses.ImageListing"%>
<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
$(document).ready(function () {
    $('#addmore').click(function (e) {
        e.preventDefault();
        var len = $("#Files > .ct").length;
        if (len < 5) {
            $("#Files").append("<div class='ct'><input value='upload' name='file' type='file'/><input  value='remove' type='checkbox'/></div>");
       $('input[value="upload"]').attr("name","file"+len).attr("id","file"+len);
        } else {
            alert("max 5 images to be uploaded");
        }
    });
    $("#imageForm").on('click', 'input[value="Delete"]', function () {
        $('#Files div.ct').has('input:checkbox:checked').remove()
    });
});
</script>
<%String userid= request.getParameter("user_id");
%>
<jsp:useBean id="Img" class="beans.Image"/>
</head>
<body>
<div>
<form name="imageForm" id="imageForm" method="post" enctype="multipart/form-data" action="imageuploadlogic.jsp">
<input type="hidden" value="<%=userid%>" name="useridid"/>
<input type="button" id="addmore" value="addmore"/><input type="button" id="Delete" value="Delete"/>



<div style="clear: both;"></div>

<%
mainclasses.ImageListing Il= new mainclasses.ImageListing();
 	List image_List = Il.getImageWhereUserId(userid);
 	if(image_List.size()!=0){
 	     for (int i = 0; i < image_List.size(); i++) {
 	    	Img = (beans.Image) image_List.get(i);%>
 	    	<div id="Files">
 	    	<input type="text" <%= Img.getimage()%> name="fileName"/>
 <img src="productimages/<%=Img.getimage()%>" width="100" height="100"/><div class='ct'> <input name='file<%=i %>' type='file'/><input  value='remove' type='checkbox'/> 
</div><%}}else{ %>
<div id="Files"></div>
<%} %>

<div style="clear: both;"></div>
<input type="submit" id="submitimage" value="submit"/>
</form>
</div>
</body>
</html>