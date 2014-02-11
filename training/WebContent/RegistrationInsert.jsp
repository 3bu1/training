<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.util.*,java.text.*,java.io.*" errorPage="" %>
<%boolean x=false;
	    	
		String firstName ="";if(request.getParameter("Firstname")!=null)firstName= request.getParameter("Firstname");
		
		
		String Address = "";if(request.getParameter("Address")!=null)Address=request.getParameter("Address");
		
		
		String lastName ="";if(request.getParameter("Lastname")!=null)lastName= request.getParameter("Lastname");  
		
		
		String passWord = "";if(request.getParameter("Password")!=null)passWord=request.getParameter("Password");
		
	
		String email_Id ="";if(request.getParameter("email")!=null)email_Id= request.getParameter("email");
		
		
		
		String mobile_Num ="";
		if( request.getParameter("mobile_Num")!=null) {mobile_Num= request.getParameter("mobile_Num");}
		
		String state = "";	if(request.getParameter("State")!=null) {state=request.getParameter("State");}
		
		String username = "";
		if(request.getParameter("UserName")!=null) {username=request.getParameter("UserName");}
		
		
		String country ="";if(request.getParameter("Country")!=null){ country=request.getParameter("Country"); }
		
		
		String gender =""; if(request.getParameter("gender")!=null)gender=request.getParameter("gender");
		
	
		
		 
%>

<jsp:useBean id="RGT" class="beans.RegistrationService">

<jsp:setProperty name="RGT" property="firstname" value="<%=firstName%>"/>

<jsp:setProperty name="RGT" property="address" value="<%=Address%>"/>

<jsp:setProperty name="RGT" property="lastname" value="<%=lastName%>"/>

<jsp:setProperty name="RGT" property="password" value="<%=passWord%>"/>

<jsp:setProperty name="RGT" property="state" value="<%=state%>"/>

<jsp:setProperty name="RGT" property="email_Id" value="<%=email_Id%>"/>

<jsp:setProperty name="RGT" property="mobile_num" value="<%=mobile_Num%>"/>

<jsp:setProperty name="RGT" property="username" value="<%=username%>"/>

<jsp:setProperty name="RGT" property="country" value="<%=country%>"/>

<jsp:setProperty name="RGT" property="gender" value="<%=gender%>"/>


<%x=RGT.insert();%><%=RGT.geterror()%>

</jsp:useBean>

<%
if(x){
	response.sendRedirect("RegistrationForm.jsp");	
}
else{
	
}
%>