<%@page import="beans.Country"%>
<%@page import="mainclasses.CountryListing"%>
<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>


<jsp:useBean id="ctr" class="beans.Country"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script type="text/javascript" src="js/validation.js"></script>
</head>
<body>


<form method="get" action="stateaddlogic.jsp" name="stateinsert" id="stateinsert">


<select name="countryid">

<%
mainclasses.CountryListing cl= new mainclasses.CountryListing();
 	List country_List = cl.getcountry();
 	if(country_List.size()!=0){
 	     for (int i = 0; i < country_List.size(); i++) {
 	    	ctr = (beans.Country) country_List.get(i);%>
<option value="<%=ctr.getCountryid()%>"><%=ctr.getCountry()%></option>
<%}} %>
</select>
<input type="text" name="state" id="state">
<input type="submit" value="submit" id="submitstate">
</form>
</body>
</html>