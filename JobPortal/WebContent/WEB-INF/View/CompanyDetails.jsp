<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Details</title>
</head>
<body>
<h1>Registered Companies for job</h1>

<form name="form" action="CompanyServlet" method="post" >
<table align="center">
 <tr>
 <td>Company Name</td>
 <td><input type="text" name="companyname" /></td>
 </tr>
 
 <tr>
 <td>Requirement</td>
 <td><input type="text" name="requirement" /></td>
 </tr>
 
 <tr>
 <td>
 <input type="submit" value="Register"></input>
 </td>
 </tr>
</table>
</form>
</body>
</html>