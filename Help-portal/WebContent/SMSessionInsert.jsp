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
<title>Add_Time_Table</title>
</head>
<body>

	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>

	<div align="center">
	<h1>Add New Session</h1>
	<br>
	<form  action="insertTimeTable" method="post">
		<table>

			<tr>
				<td>Module Code</td>
				<td><input type="text" name="mc" class="text" placeholder="ex: SE3030" width="100" required/></td>
			</tr>
			<tr>
				<td>Module Name</td>
				<td><input type="text" name="mod" class="text" required/></td>
			</tr>
			<tr>
				<td>Topic</td>
				<td><input type="text" name="topic" class="text" placeholder ="Module Lesson" required/></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><input type="date" name="date" class="text" required/></td>
			</tr>
			<tr>
				<td>Time</td>
				<td><input type="time" name="time" class="text" required/></td>
			</tr>
			<tr>
				<td>Lecturer's Name</td>
				<td><input type="text" name="lecturer" class="text" placeholder="" required/></td>
			</tr>
			<tr>
				<td>Choose a Platform</td>
				<td><Select name="platform" class="text">
					<option>Online</option>
					<option>Physical</option>
					</Select>
			   </td>
			</tr>
			<tr>
				<td>Description</td>
				<td>
				<textarea name="description" class="text" placeholder="(Optional)"></textarea>
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