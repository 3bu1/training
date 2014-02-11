<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<jsp:useBean id="ctr" class="beans.Country"/>
<jsp:useBean id="sta" class="beans.State"/>
<body>
<%
String countryid=request.getParameter("countryid");
	mainclasses.StateListing sl= new mainclasses.StateListing();
mainclasses.CountryListing cl = new mainclasses.CountryListing();
 	List state_List = sl.getstatewere(countryid);
 	List listcountry=null;
 	if(state_List.size()!=0){
 		for (int i = 0; i < state_List.size(); i++) {
 			sta = (beans.State)state_List.get(i);
 			listcountry = cl.getcountrywhere(sta.getCountryid());
 			
 			ctr = (beans.Country) listcountry.get(0);
%>
 	    	<form name="editcountry" id="editcountry" method="get">
<div>
<table cellpadding="0" cellspacing="0" border="1" >
<tr>
<td><input value="<%=sta.getstate()%>" type="text" name="statename"/>
<input value="<%=sta.getstateid()%>" type="hidden" name="stateid"/></td>
<td style="width: 200px;"><%=ctr.getCountry()%></td>
<td><input type="submit" value="update" onclick="form.action='updatestate.jsp'"/></td>
<td><input type="submit" value="Delete" onclick="form.action='deletestate.jsp'"/></td>
</tr>
</table>
</div>
</form>
<%}} %>

</body>
</html>