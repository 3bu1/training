<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

        <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.naming.*,java.sql.*,javax.sql.*" %>
<%
boolean x=false;
String countryname =request.getParameter("countryname");
String countryid=request.getParameter("countryid");
%>
<jsp:useBean id="countrydelete" class="beans.CountryService">
<%x=countrydelete.deletecountry(countryid);%>
</jsp:useBean>
<%
if(x){
	session.setAttribute("delete","delete");
	response.sendRedirect("index.jsp");
}
%>