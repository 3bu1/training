<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
boolean x=false;
String countryname ="";
if(request.getParameter("country")!=null){
	
	countryname= request.getParameter("country");
}
%>
<jsp:useBean id="countriesInsert" class="beans.CountryService">
<jsp:setProperty name="countriesInsert" property="country" value="<%=countryname%>"/>
<%x=countriesInsert.insert();%><%=countriesInsert.getError() %>
</jsp:useBean>
<%
if(x){
	/* session.setAttribute("country","vountry"); */
	response.sendRedirect("countryedit.jsp");
}
%>