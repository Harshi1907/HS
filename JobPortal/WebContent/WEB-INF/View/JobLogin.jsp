<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

<script type="text/javascript">

function validate1(){
	var mail = document.form1.email.value;
	var Pass = document.form1.password.value;


if (mail==null || mail=="")
{ 
alert("Email can't be blank"); 
return false;}

if (Pass.length<6)
{ 
alert("Password can't be blank"); 
return false;}
}
</script>

</head>
<body>

<center><h2>Job Login Page </h2></center>
<form name="form1" action="LoginServlet" method="post" onsubmit="return validate1()">
<table align="center">



<tr>
 <td>Email</td>
 <td><input type="text" name="email" /></td>
 </tr>
 
 <tr>
 <td>Password</td>
 <td><input type="password" name="password" /></td>
 </tr>
 
 <tr>
 <td><input type="submit" value="Login"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
</body>
</html>