<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
boolean x=false;
String countryno = request.getParameter("countryid");
String state = request.getParameter("state");

%>
<jsp:useBean id="stateinsert" class="beans.StateService">
<jsp:setProperty name="stateinsert" property="countryid" value="<%=countryno%>"/>
<jsp:setProperty name="stateinsert" property="state" value="<%=state%>"/>
<%x=stateinsert.insertstate();%>
</jsp:useBean>
<%
if(x){
	/* session.setAttribute("state","state"); */
	response.sendRedirect("stateedit.jsp");
}
%>