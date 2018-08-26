<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Details</title>
</head>
<body>

<h2>Eligible companies based on mentioned criteria </h2>

<form name="form" action="CriteriaServlet" method="post">
<table align="center">

<table border="1">

<tr>
<th>YOP</th>
<th>Email</th>
<th>Percentage</th>
</tr>

<c:forEach  var="dto" items="${mv}">
<tr><td>${dto.email}</td>
<td>${dto.yop}</td>
<td>${dto.percentage}</td>
 </tr>
<br>
</c:forEach>

<br>

<input type="submit" value="Click on Next"></input>
 

</table>
</form>
</body>
</html>