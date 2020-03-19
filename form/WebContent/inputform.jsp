<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<script type="text/javascript">
 function validateform(input,event){
	 var inp=input.name;
	 if(inp=='name'){
		 var key=event.keyCode;
		 if((key>=33 && key<=64)||(key>=91&&key<=96)){
			 alert("invalid name");
		     return false;
		 }
	 }
	 else if(inp=='mobile'){
			 var key=event.keyCode;
			 if(key>=32&&(key<=47||key>=58)){
					 alert("invalid number");
				 return false;
		 }
	 }
}
 function nullcheck(){
	 var Name=document.login.name.value;
	 var Mobile=document.login.mobile.value;
	 var Remarks=document.login.remarks.value;
     if(Name==""||Name==null){
		  alert("name cannot be blank");
		 return false;
	 }
     else if(Mobile==""||Mobile==null){
		 alert("mobile cannot be blank");
		 return false;
	 }
     else if(Remarks==""||Remarks==null){
		 alert("Remarks cannot be blank");
		 return false;
	 }
 }
 function validate(){
	 var retvalue;
	 retvalue=nullcheck();
	 if(retvalue==false){
	 return retvalue;
 }
	 }
</script>
<body>

<form name="login" action="welcome.jsp">
Name:<input type="text" name="name" onkeypress="return validateform(this,event)"><br><br>
Mobile:<input type="text" name="mobile" maxlength="10"onkeypress="return validateform(this,event)"><br><br>
Remarks:<textarea id="address" name="remarks" rows="5" cols="30"></textarea><br><br>
<input type="submit" value="submit" onclick="validate();"/>

</form>

</body>
</html>