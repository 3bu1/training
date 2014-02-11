<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
boolean x=false;
String stateid=request.getParameter("stateid");
%>
<jsp:useBean id="countryupdate" class="beans.StateService">
<%x=countryupdate.deletestate(stateid);%>
</jsp:useBean>
<%
if(x){
	session.setAttribute("deletestate","deletestate");
	response.sendRedirect("index.jsp");
}
%>