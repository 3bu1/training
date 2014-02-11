<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
boolean x=false;
String countryname =request.getParameter("countryname");
String countryid=request.getParameter("countryid");
%>
<jsp:useBean id="countryupdate" class="beans.CountryService">
<%x=countryupdate.updatecountry(countryname, countryid);%>
</jsp:useBean>
<%
if(x){
	/* session.setAttribute("update","update"); */
	response.sendRedirect("countryedit.jsp");
}
%>