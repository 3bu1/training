<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
boolean x=false;
String user_id =request.getParameter("user_id");
%>
<jsp:useBean id="UserDelete" class="beans.RegistrationService">
<%x=UserDelete.deleteUser(user_id);%>
</jsp:useBean>
<%
if(x){
	System.out.println("done");
	//response.sendRedirect("index.jsp");
}
%>