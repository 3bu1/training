<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
boolean x=false;
String countryid=request.getParameter("countryid");
%>
<jsp:useBean id="stateview" class="mainclasses.StateListing">
<%stateview.getstatewere(countryid);%>
</jsp:useBean>
<%
if(x){
	session.setAttribute("deletestate","deletestate");
	response.sendRedirect("index.jsp");
}
%>