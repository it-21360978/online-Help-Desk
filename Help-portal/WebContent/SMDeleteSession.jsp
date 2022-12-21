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
<title>Delete_Session</title>
</head>
<body>
<%
		String moduleCode = request.getParameter("moduleCode");
		String module = request.getParameter("module");
		String topic = request.getParameter("topic");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String lecturer = request.getParameter("lecturer");
		String platform = request.getParameter("platform");
		String description = request.getParameter("description");
	    
%>
	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>
	
	
	
		<div align="center">
		<h1>Are You Sure You Want to Delete This Session Info?</h1>
		
		<form  action="deleteSession" method="post">
		<table>
		
						<tr>
				<td>Module Code</td>
				<td><input type="text" name="mc" class="text" value="<%= moduleCode%>" readonly></td>
			</tr>
			<tr>
				<td>Module Name</td>
				<td><input type="text" name="mod" class="text" value="<%= module%>" disabled></td>
			</tr>
			<tr>
				<td>Topic</td>
				<td><input type="text" name="topic" class="text" value="<%= topic%>" disabled></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><input type="date" name="date" class="text"  value="<%= date%>" disabled></td>
			</tr>
			<tr>
				<td>Time</td>
				<td><input type="time" name="time" class="text"  value="<%= time%>" disabled></td>
			</tr>
			<tr>
				<td>Lecturer's Name</td>
				<td><input type="text" name="lecturer" class="text"  value="<%= lecturer%>" disabled></td>
			</tr>
			<tr>
				<td>Choose a Platform</td>
				<td><Select name="platform" class="text"  value="<%= platform%>" disabled>
					<option>Online</option>
					<option>Physical</option>
					</Select>
			   </td>
			</tr>
			<tr>
				<td>Description</td>
				<td>
				<textarea name="description" class="text" value="<%= description%>" disabled></textarea>
				</td>
			</tr>
			
			<tr>
				<td><input type="submit" name="submit" class="submit5" value="Delete Session Info"> </td>
			</tr>
			
	</table>
	</form>
	</div>
	<br><br>

</body>
</html>