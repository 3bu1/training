$(document).ready(function(){
$("#Country").change(function() {
   var xyz = $("option:selected").val();
  var Myselect = $('#State');
$.get("StateCallBack.jsp",
    {countryREF : xyz } ,function(data){
    	Myselect.empty();
	var arr = data.split('@');
  	for(var prop in arr){
  			
  		 var xxx = arr[prop].split(":");
  		
  		$("<option></option>")
	        .attr("value", xxx[0]).text(xxx[1])
	        .appendTo('#State');
  		}
  		
  		
 });//end get         
   });
});