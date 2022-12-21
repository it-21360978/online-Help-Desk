<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" type = "text/css" href ="css/admin.css" />
<style>  
Body  
{  
background-color: #ccffff;
}  
</style>
<meta charset="ISO-8859-1">
<title>Delete_User_Account</title>
</head>
<body>
<%
		String userId = request.getParameter("userId");
	    String name = request.getParameter("name");
	    String nic = request.getParameter("nic");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String gender = request.getParameter("gender");
	    String userCategory = request.getParameter("userCategory");
	    String password = request.getParameter("password");
	    
%>
	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>


	
	
	
		<div align="center">
		<h1>Are You Sure You Want to Delete This Account?</h1>
		
		<form  action="delete" method="post">
		<table>
		
			<tr>
				<td>User ID</td>
				<td><input type="text" name="uid" class="text" value="<%= userId%>" readonly></td>
			</tr>
			
			<tr>
				<td>User Category</td>
				<td><input type="text" name="uCategory" class="text" value="<%= userCategory%>" disabled></td>
			</tr>
		
			
			<tr>
				<td>User Name</td>
				<td><input type="text" name="name" class="text" value="<%= name%>" disabled></td>
			</tr>
			
			<tr>
				<td>NIC</td>
				<td><input type="text" name="nic" class="text" value="<%= nic%>" disabled></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" class="text" value="<%= email%>" disabled></td>
			</tr>
			
			<tr>
				<td>Contact Number</td>
				<td><input type="text" name="phone" class="text" value="<%= phone%>" disabled></td>
			</tr>
			
			<tr>
				<td>Gender</td>
				<td><input type="text" name="gender" class="text" value="<%= gender%>" disabled></td>
			</tr>
			
			
			<tr>
				<td><input type="submit" name="submit" class="submit5" value="Delete User Information"> </td>
			</tr>
			
	</table>
	</form>
	</div>
	<br><br>

</body>
</html>