<%@  page contentType="text/html; charset=iso-8859-1" language="java"
import="java.util.*,java.text.*,java.io.*" errorPage=""%>

<jsp:useBean id="sta" class="beans.State"/>
<jsp:useBean id="ctr" class="beans.Country"/>
<%	
String countryid=request.getParameter("countryREF");
	mainclasses.CountryListing cl= new mainclasses.CountryListing();
mainclasses.StateListing sl= new mainclasses.StateListing();
 	List state_List = sl.getstatewere(countryid);
 	List listcountry=null;
 	String data="";
 	if(state_List.size()!=0){
 		for (int i = 0; i < state_List.size(); i++) {
 			sta = (beans.State)state_List.get(i);
 			listcountry = cl.getcountrywhere(sta.getCountryid());
 			data="@"+sta.getstateid()+":"+sta.getstate();
 			out.print(data);
}} %>
