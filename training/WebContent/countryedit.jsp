<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>
    <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.naming.*,java.sql.*,javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
li{float: left;padding: 5px 20px;list-style: none;border: 1px solid #000;}
</style>
</head>
<jsp:useBean id="ctr" class="beans.Country"/>
<body>

<%
mainclasses.CountryListing cl= new mainclasses.CountryListing();
 	List country_List = cl.getcountry();
 	if(country_List.size()!=0){
 	     for (int i = 0; i < country_List.size(); i++) {
 	    	ctr = (beans.Country) country_List.get(i);%>
<script>
$(document).ready(function(){
  $("#update<%=i%>").click(function(){
   var x= $("#countryname<%=i%>").val(); 
   if(x.trim()=="" || x.trim()==null){
	   alert("fill the country field.");
	   $("#countryname<%=i%>").focus();
	   return false;
   }
  });
});
</script>
<form name="editcountry" id="editcountry" method="get" >

<div>
<ul>
<li><input value="<%=ctr.getCountry()%>" type="text" name="countryname" id="countryname<%=i%>"/></li>
<input value="<%=ctr.getCountryid()%>" type="hidden" name="countryid"/>
<li><input type="submit" value="update" onclick="form.action='updatecountry.jsp'" id="update<%=i%>"/></li>
<li><input type="submit" value="Delete" onclick="form.action='deletecountry.jsp'"/></li>
<li><input type="submit" value="view state" onclick="form.action='country_stateview.jsp'"/></li>
<li style="clear: both;padding: 0px;"></li>
</ul>
</div>
</form>

	    	
<%}} %>


</body>
</html>