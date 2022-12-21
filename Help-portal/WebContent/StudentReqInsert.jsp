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
<title>Send_New_Request</title>
</head>
<body>

	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>


	<div align="center">
	<h1>Create A New Request</h1>
	<br>
	<form  action="insertReq" method="post">
		<table>
		
			<tr>
				<td>Student ID</td>
				<td><input type="text" name="sid" class="text" required/></td>
			</tr>
			<tr>
				<td>Student Name</td>
				<td><input type="text" name="name" class="text"  width="100" required/></td>
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
				<td>Batch</td>
				<td><input type="text" name="batch" class="text" required/></td>
			</tr>
			<tr>
				<td>Module</td>
				<td><input type="text" name="module" class="text" placeholder="Module Name or Code" required/></td>
			</tr>
			
			<tr>
				<td>Lesson</td>
				<td><input type="text" name="lesson" class="text" required/></td>
			</tr>

			<tr>
				<td>Requested Date</td>
				<td><input type="date" name="reqDate" class="text" required/></td>
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