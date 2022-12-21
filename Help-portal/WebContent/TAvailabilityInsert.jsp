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
<title>Add_Availability</title>
</head>
<body>

<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>


	<div align="center">
	<h1>Add Availability</h1>
	<br>
	<form  action="insertAvailability" method="post">
		<table>

			<tr>
				<td>Employee ID</td>
				<td><input type="text" name="eid" class="text" placeholder="UserID" width="100" required/></td>
			</tr>
			<tr>
				<td>Full Name</td>
				<td><input type="text" name="nameE" class="text" required/></td>
			</tr>
			<tr>
				<td>Choose a Faculty</td>
				<td><Select name="faculty" class="text">
					<option>FOC</option>
					<option>FOE</option>
					<option>BM</option>
					<option>OTHER</option>
					</Select>
			   </td>
			</tr>
			<tr>
				<td>Module</td>
				<td><input type="text" name="module" class="text" placeholder="Module Code or Name" required/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" class="text" placeholder ="example@example.com" required/></td>
			</tr>
			<tr>
				<td>Choose A Platform</td>
				<td><Select name="platform" class="text">
					<option>Online via MS teams</option>
					<option>Online via Zoom</option>
					<option>Physical</option>
				   </Select>
			   </td>
			</tr>
			<tr>
				<td>Choose Days</td>
				<td><Select name="day" class="text">
					<option>Weekdays</option>
					<option>Weekends</option>
				   </Select>
			   </td>
			</tr>
			<tr>
				<td>Choose Session</td>
				<td><Select name="time" class="text">
					<option>Morning Session (8 to 12)</option>
					<option>Evening Session (4 to 8)</option>
				   </Select>
			   </td>
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