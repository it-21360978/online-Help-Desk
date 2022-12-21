<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Add_User_Information</title>
</head>
<body>

	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>


	<div align="center">
	<h1>Add a New User</h1>
	<br>
	<form  action="insert" method="post">
		<table>

			<tr>
				<td>User Name</td>
				<td><input type="text" name="name" class="text" placeholder="Full Name" width="100" required/></td>
			</tr>
			<tr>
				<td>NIC</td>
				<td><input type="text" name="nic" class="text" required/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" class="text" placeholder ="example@example.com" required/></td>
			</tr>
			<tr>
				<td>Contact Number</td>
				<td><input type="text" name="phone" class="text" placeholder="(94)000000000" required/></td>
			</tr>
			<tr>
				<td>Choose a Gender</td>
				<td><Select name="gender" class="text">
					<option>Male</option>
					<option>Female</option>
					</Select>
			   </td>
			</tr>
			<tr>
				<td>Choose User Category</td>
				<td><Select name="uCategory" class="text">
					<option>Student</option>
					<option>Teacher</option>
					<option>Staff</option>
				   </Select>
			   </td>
			</tr>
			
			<tr>
				<td>User ID</td>
				<td><input type="text" name="uid" class="text" placeholder="ex: hd+NIC" required/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="psw" class="text" required/></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" class="submit"  value="Submit"/> </td>
			</tr>
		</table>
	</form>
	</div>
	<br><br>
	
</body>
</html>