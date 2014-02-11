<%@page import="beans.Country"%>
<%@page import="mainclasses.CountryListing"%>
<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>


<jsp:useBean id="sta" class="beans.State"/>
<jsp:useBean id="ctr" class="beans.Country"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script type="text/javascript" src="js/validation.js"></script>
<script src="js/combochange.js" type="text/javascript"></script>
</head>
<body>
<input type="hidden" id="tempcountryid" name="tempcountryid"/>
<form action="RegistrationInsert.jsp" method="post" name="regform" id="regform">
<table cellpadding="0" cellspacing="0" border="1" width="700" style="padding-left: 10px;">
<tr>
<td>
<div>First Name*</div>
<div><input type="text" name="Firstname" id="Firstname"/></div>
</td>
<td>
<div>Last Name</div>
<div><input type="text" name="Lastname" id="Lastname"/></div>
</td>
</tr>
<tr>
<td >
<div>E-mail*</div>
<div><input type="text" name="email" id="email"/></div>
</td>
<td >
<div>Mobile*</div>
<div><input type="text" name="mobile_Num" id="mobile_Num"/></div>
</td>
</tr>
<tr>
<td colspan="2">
<div>User Name*</div>
<div><input type="text" name="UserName" id="UserName"/></div>
</td>
</tr>
<tr>
<td colspan="2">
<div>Password*</div>
<div><input type="password" name="Password" id="Password"/></div>
</td>
</tr>
<tr>
<td colspan="2">
<div>Gender*</div>
<span>Male<input type="radio" id="Male" name="gender" value="male"/></span><span>Female<input type="radio" id="Female" value="female" name="gender"/></span>
</td>
</tr>
<tr>

<td colspan="2">
<div>Address*</div>
<div>
<textarea name="Address" id="Address" style="width:200px; height:100px;">
</textarea>
</div>
</td>
</tr>
<tr>
<td colspan="2">
<div>Country*</div>
<div>
<select name="Country" id="Country">
<option value="">-Select-</option>
<%
mainclasses.CountryListing cl= new mainclasses.CountryListing();
 	List country_List = cl.getcountry();
 	if(country_List.size()!=0){
 	     for (int i = 0; i < country_List.size(); i++) {
 	    	ctr = (beans.Country) country_List.get(i);%>
<option value="<%=ctr.getCountryid()%>"><%=ctr.getCountry()%></option>
<%}} %>
</select>
</div>
</td>
</tr>
<tr>
<td colspan="2">

<div>State*</div>
<div>
<select name="State" id="State">
<option></option>
</select>
</div>
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" id="submitfinal" />
</td>
</tr>
<tr>
<td colspan="2"><a href="RegistrationFormEdit.jsp">Edit user</a></td>
</tr>
</table>
</form>

</body>
</html>