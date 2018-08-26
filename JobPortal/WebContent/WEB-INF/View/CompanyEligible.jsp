<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Eligible Candidates</title>
</head>
<body>
<h1>Details</h1>
<table border="1">

<tr>
<th>Company Name</th>
<th>Requirement</th>
<th>Apply</th>
</tr>

<c:forEach  var="dto" items="${m6}">
<tr><td>${dto.companyname}</td>
<td>${dto.requirement}</td>

<td><a href="ApplyLink?id=${dto.cid }" >Apply</a></td>


</tr>
<br>
</c:forEach>
</table>
</body>
</html>