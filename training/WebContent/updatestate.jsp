<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
boolean x=false;
String statename =request.getParameter("statename");
String stateid=request.getParameter("stateid");
%>
<jsp:useBean id="countryupdate" class="beans.StateService">
<%x=countryupdate.updatestate(statename, stateid);%>
</jsp:useBean>
<%
if(x){
	/* session.setAttribute("updatestate","updatestate"); */
	response.sendRedirect("stateedit.jsp");
}
%>