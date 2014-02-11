<%@page import="java.sql.ResultSet"%>
<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>

<jsp:useBean id="sta" class="beans.State"/>
<jsp:useBean id="ctr" class="beans.Country"/>
<%	
String username=request.getParameter("UseraName");
	mainclasses.RegistrationListing Rl= new mainclasses.RegistrationListing();
	ResultSet user = Rl.getUserName(username);
	
	if(user.next()){
 		out.print("User name already Exist");
 		
} 

else{
		out.print("Available");
	
}
%>