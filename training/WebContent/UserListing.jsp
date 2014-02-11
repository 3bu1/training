<%@page import="beans.Country"%>
<%@page import="beans.RegistrationForm"%>
<%@page import="mainclasses.*"%>
<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
input{width: 100px;}
</style>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script type="text/javascript" src="js/validation.js"></script>
</head>
<jsp:useBean id="cntry" class="beans.Country"/>
<jsp:useBean id="ctr" class="beans.Country"/>
<jsp:useBean id="state" class="beans.State"/>
<jsp:useBean id="sta" class="beans.RegistrationForm"/>
<body>
<table cellpadding="0" cellspacing="0" border="1" width="100%">
<tr>
<td>First Name</td>

<td>E-mail</td>

<td>Edit</td>
<td>Delete</td>
</tr>
<%
mainclasses.RegistrationListing Rgl= new mainclasses.RegistrationListing();
 	List userDetails = Rgl.getUserDetails();
 	if(userDetails.size()!=0){
 		for (int i = 0; i < userDetails.size(); i++) {
 			sta = (beans.RegistrationForm)userDetails.get(i);
%>

<form>

<tr>
<input type="hidden" value="<%=sta.getuser_id() %>" name="user_id"/>
<td><input type="text" value="<%=sta.getfirstname() %>" name="Firstname" id="Firstname"/></td>

<td><input type="text" value="<%=sta.getemail_Id() %>" name="email" id="email"/> </td>

<td><input type="submit" value="Edit" id="update_reg" onclick="form.action='RegistrationFormEdit.jsp?userid=<%=sta.getuser_id() %>'"/></td>
<td><input type="submit" value="delete" onclick="form.action='UserDelete.jsp'"/></td>
<td><input type="submit" value="View album" onclick="form.action='multipleImageUpload.jsp'"/></td>
</tr>
</form>
<%}} %>
</table>

</body>
</html>