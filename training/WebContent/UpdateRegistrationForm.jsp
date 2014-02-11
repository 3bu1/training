<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
boolean x=false;


String userid =request.getParameter("user_id");
String Firstname=request.getParameter("Firstname");
String Lastname =request.getParameter("Lastname");
String email=request.getParameter("email");
String UserName =request.getParameter("UserName");
String Password=request.getParameter("Password");
String Gender =request.getParameter("gender");
String Address=request.getParameter("Address");
String Country =request.getParameter("Country");
String State=request.getParameter("State");
String phonenumuber =request.getParameter("mobile_Num");
%>
<jsp:useBean id="Regformupdate" class="beans.RegistrationService">
<%x=Regformupdate.updateuser(userid, Firstname, Lastname, email, UserName, Password, Gender, Address, Country, State, phonenumuber);%>
</jsp:useBean>
<%
if(x){
	/* session.setAttribute("updatestate","updatestate"); */
	response.sendRedirect("UserListing.jsp");
}
else{
	System.out.println("noo");
}
%>