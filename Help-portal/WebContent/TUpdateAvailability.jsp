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
<title>Update_Availability</title>
</head>
<body>
			
		<%
		String empId = request.getParameter("empId");
	    String name = request.getParameter("name");
	    String faculty = request.getParameter("faculty");
	    String module = request.getParameter("module");
	    String email = request.getParameter("email");
	    String platform = request.getParameter("platform");
	    String day = request.getParameter("day");
	    String time = request.getParameter("time");
	   %>
	   
	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>
		
		<div align="center">
		<h1>Update Availability</h1>
		<form  action="updateAvailability" method="post">
		<table>

			<tr>
				<td>Employee ID</td>
				<td><input type="text" name="eid" class="text" value="<%= empId%>" readonly></td>
			</tr>
			<tr>
				<td>Full Name</td>
				<td><input type="text" name="nameE" class="text" value="<%= name%>" readonly></td>
			</tr>
			<tr>
				<td>Faculty</td>
				<td><Select name="faculty" class="text"  value="<%= faculty%>">
					<option>FOC</option>
					<option>FOE</option>
					<option>BM</option>
					<option>OTHER</option>
					</Select>
			   </td>
			</tr>
			<tr>
				<td>Module</td>
				<td><input type="text" name="module" class="text"  value="<%= module%>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" class="text"  value="<%= email%>"></td>
			</tr>
			<tr>
				<td>Platform</td>
				<td><Select name="platform" class="text"  value="<%= platform%>">
					<option>Online</option>
					<option>Physical</option>
					</Select>
			   </td>
			</tr>
			<tr>
				<td>Days</td>
				<td><Select name="day" class="text" value="<%= day%>">
					<option>Weekdays</option>
					<option>Weekends</option>
				   </Select>
			   </td>
			</tr>
			<tr>
				<td>Session</td>
				<td><Select name="time" class="text" value="<%= time%>">
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