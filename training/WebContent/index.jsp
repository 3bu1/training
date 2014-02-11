<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div><a href="countryinsertion.jsp">add country</a></div>
<div><a href="addstate.jsp">add state</a></div>
<div><a href="countryedit.jsp">Edit country</a></div>
<div><a href="stateedit.jsp">Edit state</a></div>
<div><a href="RegistrationForm.jsp">User Registration</a></div>
<div><a href="UserListing.jsp">User Listing/Edit User</a></div>
<div><a href="imageupload.jsp">Image upload</a></div>
<div><a href="multipleImageUpload.jsp">Multiple Image Upload</a></div>
<div><a href="gallery.jsp">gallery</a></div>

<%if(session.getAttribute("country") != null){ %>
<div>country has been added</div>
<%session.setAttribute("country",null);} %>
<%if(session.getAttribute("state") != null){ %>
<div>state has been added</div>
<%session.setAttribute("state",null);} %>
<%if(session.getAttribute("delete") != null){ %>
<div>country has been deleted</div>
<%session.setAttribute("delete",null);} %>
<%if(session.getAttribute("update") != null){ %>
<div>country has been updated</div>
<%session.setAttribute("update",null);} %>
<%if(session.getAttribute("updatestate") != null){ %>
<div>state has been updated</div>
<%session.setAttribute("updatestate",null);} %>
<%if(session.getAttribute("deletestate") != null){ %>
<div>state has been deleted</div>
<%session.setAttribute("deletestate",null);} %>
</body>
</html>