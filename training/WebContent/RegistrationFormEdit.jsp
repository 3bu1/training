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
<script src="js/combochange.js" type="text/javascript"></script>
</head>
<jsp:useBean id="cntry" class="beans.Country"/>
<jsp:useBean id="ctr" class="beans.Country"/>
<jsp:useBean id="state" class="beans.State"/>
<jsp:useBean id="sta" class="beans.RegistrationForm"/>
<body>
<table cellpadding="0" cellspacing="0" border="1" width="100%">
<%
String user_id= request.getParameter("user_id");
mainclasses.RegistrationListing Rgl= new mainclasses.RegistrationListing();
 	List userDetails = Rgl.getUserDetailsWhereId(user_id);
 	if(userDetails.size()!=0){
 		for (int i = 0; i < userDetails.size(); i++) {
 			sta = (beans.RegistrationForm)userDetails.get(i);
%>

<form action="RegistrationInsert.jsp" method="get" name="regform" id="regform">
<table cellpadding="0" cellspacing="0" border="1" width="700" style="padding-left: 10px;">
<tr>
<td>
<div>First Name*</div>
<div><input type="text" name="Firstname" id="Firstname" value="<%=sta.getfirstname() %>"/><input name="user_id" type="hidden" value="<%=sta.getuser_id()%>"/></div>
</td>
<td>
<div>Last Name</div>
<div><input type="text" name="Lastname" id="Lastname" value="<%=sta.getlastname() %>" /></div>
</td>
</tr>
<tr>
<td >
<div>E-mail*</div>
<div><input type="text" name="email" id="email" value="<%=sta.getemail_Id() %>"/></div>
</td>
<td >
<div>Mobile*</div>
<div><input type="text" name="mobile_Num" id="mobile_Num" value="<%=sta.getmobile_num() %>"/></div>
</td>
</tr>
<tr>
<td colspan="2">
<div>User Name*</div>
<div><input type="text" name="UserName" id="UserName" value="<%=sta.getusername()%>"/></div>
</td>
</tr>
<tr>
<td colspan="2">
<div>Password*</div>
<div><input type="password" name="Password" id="Password" value="<%=sta.getpassword() %>"/></div>
</td>
</tr>
<tr>
<td colspan="2">
<div>Gender*</div>
<input type="radio" value="<%=sta.getgender() %>" id="Male" name="gender"/>male<input type="radio" value="<%=sta.getgender() %>" id="Female" name="gender"/>female
</td>

</tr>
<tr>

<td colspan="2">
<div>Address*</div>
<div>
<textarea name="Address" id="Address" style="width:200px; height:100px;">
<%=sta.getaddress() %>
</textarea>
</div>
</td>
</tr>
<tr>
<td colspan="2">
<div>Country*</div>
<select name="Country" id="Country">
<%
	
mainclasses.CountryListing cl = new mainclasses.CountryListing();
 	List listcountry;
 	List countrys=cl.getcountry();
 	listcountry = cl.getcountrywhere(sta.getcountryid());
 	cntry = (beans.Country)listcountry.get(0);
 	
%>
<option value="<%=sta.getcountryid()%>"><%=cntry.getCountry() %></option>

<%for(int k=0; k < countrys.size();k++){ 
	ctr = (beans.Country)countrys.get(k);
%>
<option value="<%=ctr.getCountryid() %>">
<%=ctr.getCountry() %>
</option>
<%} %>
</select>
</td>
</tr>
<tr>
<td colspan="2">

<div>State*</div>
<div>
<select name="State" id="State">
<%
	
mainclasses.StateListing Sl = new mainclasses.StateListing();
 	List listState=null;
 
 	List States=Sl.getStateWereStateId(sta.getstateid());
 	state = (beans.State)States.get(0);

 	%>
<option value="<%=sta.getstateid()%>"><%=state.getstate() %></option>
</select></option>
</select>
</div>
</td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="update" id="update_reg" onclick="form.action='UpdateRegistrationForm.jsp'"/></td>
</tr>
</table>
</form>
<%}} %>
</table>

</body>
</html>