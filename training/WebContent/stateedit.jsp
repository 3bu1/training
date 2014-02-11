<%@page import="mainclasses.CountryListing"%>
<%@page import="mainclasses.StateListing"%>
<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
</head>
<jsp:useBean id="ctr" class="beans.Country"/>
<jsp:useBean id="sta" class="beans.State"/>
<body>
<%
	mainclasses.StateListing sl= new mainclasses.StateListing();
mainclasses.CountryListing cl = new mainclasses.CountryListing();
 	List state_List = sl.getstates();
 	if(state_List.size()!=0){
 		for (int i = 0; i < state_List.size(); i++) {
 			sta = (beans.State)state_List.get(i);
 			List listcountry = cl.getcountrywhere(sta.getCountryid());
 			//System.out.print(listcountry);
 			ctr = (beans.Country) listcountry.get(0);
%>
<script>
$(document).ready(function(){
  $("#update<%=i%>").click(function(){
   var x= $("#statename<%=i%>").val(); 
   if(x.trim()=="" || x.trim()==null){
	   alert("fill the state field.");
	   $("#statename<%=i%>").focus();
	   return false;
   }
  });
});
</script>
 	    	<form name="editcountry" id="editcountry" method="get">
 	    	
 	    	
<div>
<table cellpadding="0" cellspacing="0" border="1" >
<tr>
<td><input value="<%=sta.getstate()%>" type="text" name="statename" id="statename<%=i%>"/>
<input value="<%=sta.getstateid()%>" type="hidden" name="stateid"/></td>
<td style="width: 200px;"><%=ctr.getCountry()%></td>
<td><input type="submit" value="update" onclick="form.action='updatestate.jsp'" id="update<%=i%>"/></td>
<td><input type="submit" value="Delete" onclick="form.action='deletestate.jsp'"/></td>
</tr>
</table>
</div>
</form>
<%}} %>

</body>
</html>