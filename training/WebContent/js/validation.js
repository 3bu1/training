$(document).ready(function(){
	  $("#submitvalue").click(function(){
	   var x= $("#country").val(); 
	   if(x.trim()==""){
		   alert("fill the country field.");
		   $("#country").focus();
		   return false;
	   }
	  });
	});


$(document).ready(function(){
	  $("#submitstate").click(function(){
	   var x= $("#state").val(); 
	   if(x.trim()=="" || x.trim()==null){
		   alert("fill the state field.");
		   $("#state").focus();
		   return false;
	   }
	  });
	});

$(document).ready(function(){
	$("#UserName").change(function() {
		var xyz = $("#UserName").val();
		$.get("UserCheckCallBack.jsp",
		    {UseraName : xyz } ,function(data){
		   	alert(data);
		   });
	});
	  $("#submitfinal,#update_reg").click(function(){
	   var x0= $("#Firstname").val();
	  var x2= $("#email").val();
	   var x3= $("#mobile_Num").val();
	   var x4= $("#UserName").val();
	   var x5= $("#Password").val();
	   var x8= $("#Address").val();
	   var x9= $("#Country option:selected").val();
	   var x10= $("#State option:selected").val();
	   var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
	   var ww =pattern.test(x2.trim());
	   var num = $.isNumeric(x3.trim());
	   
	   if(x0.trim()==""){
		   alert("fill the Firstname field.");
		   $("#Firstname").focus();
		   return false;
	   }
	   else if(x2.trim()==""){
		   alert("fill the email field.");
		   $("#email").focus();
		   return false;
		   
	   }
	   else if(!ww){
		   alert("give a valid email id");
		   $("#email").focus();
		   return false;
	   }
	   else if(x3.trim()==""){
		   alert("fill the Mobile number field.");
		   $("#mobile_Num").focus();
		   return false;
	   }
	   else if(!num && x3.trim().length != 10){
		   alert("fill a valid Mobile number field.");
		   $("#mobile_Num").focus();
		   return false;
	   }
	   else if(x4.trim()==""){
		   alert("fill the UserName field.");
		   $("#UserName").focus();
		   return false;
	   }
	   else if(x5.trim()==""){
		   alert("fill the Password field.");
		   $("#Password").focus();
		   return false;
	   }
	   else if(x5.trim().length < 8){
		   alert("fill themore than 12 characters.");
		   $("#Password").focus();
		   return false;
	   }
	   else if((!$("#Male,#Female").is(':checked'))) { 
		    alert("please check gender"); 
		    $("#Male").focus();
		    return false;
		   }
	 
	   else if(x8.trim()==""){
		   alert("fill the Address field.");
		   $("#Address").focus();
		   return false;
	   }
	   else if(x9.trim()==""){
		   alert("fill the Country field.");
		   $("#Country").focus();
		   return false;
	   }
	   else if(x10.trim()==""){
		   alert("fill the State field.");
		   $("#State").focus();
		   return false;
	   }
	  });
	});

$(window).load(function(){
	var male = $("#Male").val();
	var female = $("#Female").val();
	if((male == "male")) { 
		$("#Male").prop("checked", true);
		$("#Female").val("female");
		}
	else if(female == "female"){
	$("#Female").prop("checked", true);
	$("#Male").val("male");
	}
	
});


