<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<h2><center>Admin Login Page</center></h2>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<form name="form" action="AdminServlet" method="post" >
<table align="center">
 <tr>
 <td>Admin Name</td>
 <td><input type="text" name="adminname" /></td>
 </tr>
 
 <tr>
 <td>Admin mail</td>
 <td><input type="text" name="adminmail" /></td>
 </tr>
 
 <tr>
 <td>Admin mobile</td>
 <td><input type="text" name="adminmob" /></td>
 </tr>
 
 <tr>
 <td>Admin password</td>
 <td><input type="password" name="adminpass" /></td>
 </tr>
 
 <tr>
 <td>
 <input type="submit" value="AdminRegister"></input>
 
 
 </td>
 </tr>
</table>
</form>
</body>
</html>