<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
<script type="text/javascript">

function validate(){

	var Fullname = document.form.fullname.value;
	var Email = document.form.email.value;
	var DOB = document.form.dob.value;
	var YOP = document.form.yop.value;
	var College = document.form.college.value;
	var Password = document.form.password.value;
	var percent = document.form.percentage.value;
	var e1 = document.getElementById("1");

    var exp = e1.options[e1.selectedIndex].text;
	
	if (Fullname==null || Fullname=="")
	 { 
	 alert("Full Name can't be blank"); 
	 return false;}
	
	if (Email==null || Email=="")
	 { 
	 alert("Email can't be blank"); 
	 return false;}
	
	if (DOB==null || DOB=="")
	 { 
	 alert("DOB can't be blank and should be in proper format"); 
	 return false;}
	
	if (YOP==null || YOP=="")
	 { 
	 alert("YOP can't be blank and should be in proper format"); 
	 return false;}
	
	if (College==null || College=="")
	 { 
	 alert("College can't be blank"); 
	 return false;}
	
	if (Password==null || Password=="")
	 { 
	 alert("Password can't be blank"); 
	 return false;}
	
	if (exp==null || exp=="")
	 { 
	 alert("experience can't be blank"); 
	 return false;}
	
	if (percent==null || percent=="")
	 { 
	 alert("percentage can't be blank"); 
	 return false;}
	}


</script>
</head>
<body>

<center><h2>Job Registration Page </h2></center>
<form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
<table align="center">
 <tr>
 <td>Full Name</td>
 <td><input type="text" name="fullname" /></td>
 </tr>
 
 <tr>
 <td>Email</td>
 <td><input type="text" name="email" /></td>
 </tr>
 
 <tr>
 <td>DOB</td>
 <td><input type="text" name="dob" /></td>
 </tr>
 
 <tr>
 <td>YOP(Year Of Passout)</td>
 <td><input type="text" name="yop" /></td>
 </tr>
 
 <tr>
 <td>Percentage%</td>
 <td><input type="text" name="percentage" /></td>
 </tr>
 
 <tr>
 <td>College Name</td>
 <td><input type="text" name="college" /></td>
 </tr>
 
 <tr>
 <td>Password</td>
 <td><input type="password" name="password" /></td>
 </tr>
 
 <tr>
 <td>Experience</td>
 
 
 <td ><select name="month" id="1">

                                                      <option value="00">month</option>

                                                      <option value="01">01</option>

                                                      <option value="02">02</option>

                                                      <option value="03">03</option>

                                                      <option value="04">04</option>

                                                      <option value="05">05</option>

                                                      <option value="06">06</option>

                                                      <option value="07">07</option>

                                                      <option value="08">08</option>

                                                      <option value="09">09</option>

                                                      <option value="10">10</option>

                                          </select>

                                    </td>
                                    </tr>
                                    
 <tr>
 <td>Stream</td>
 
 
 <td ><select name="stream" id="2">

                                                      <option value="00">stream</option>

                                                      <option value="01">EEE</option>

                                                      <option value="02">CS</option>

                                                      <option value="03">IT</option>

                                                      <option value="04">ETnT</option>

                                                      <option value="05">MECH</option>
                                                      
                                                      </select>
                                                      </td>
                                                      </tr>
                                                      
                                                      <tr>
 <td>Gender</td>
<td ><select name="gender" id="3">

                                                      <option value="gender">00</option>

                                                      <option value="Female">01</option>

                                                      <option value="Male">02</option>
                                                      
                                                      <option value="Others">03</option>
</select>
</td>
 
 
 </tr>
                                    
 <tr>
 <td><input type="submit" value="Register"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
 </table>
 </form>
</body>
</html>
