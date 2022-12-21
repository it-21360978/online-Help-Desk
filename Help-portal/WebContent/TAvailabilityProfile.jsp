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

table {
  font-family: arial, sans-serif;
  width: 50%;
}

td {
  text-align: left;
  padding: 8px;
}
</style>
<meta charset="ISO-8859-1">
<title>Availability_Profile</title>
</head>
<body>

	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>


	
	<h1>My Availability Profile</h1>

	<table>
	<c:forEach var="us" items ="${usDetails}">
	
	<c:set var ="empId" value="${us.empId}"/>
	<c:set var ="name" value="${us.name}"/>
	<c:set var ="faculty" value="${us.faculty}"/>
	<c:set var ="module" value="${us.module}"/>
	<c:set var ="email" value="${us.email}"/>
	<c:set var ="platform" value="${us.platform}"/>
	<c:set var ="day" value="${us.day}"/>
	<c:set var ="time" value="${us.time}"/>
	
	<tr>
		<td>EMP ID</td>
		<td>${us.empId}</td>
	</tr>
	
	<tr>
		<td>Name</td>
		<td>${us.name}</td>
	</tr>
	
	<tr>
		<td>Faculty</td>
		<td>${us.faculty}</td>
	</tr>
	
	<tr>
		<td>Module</td>
		<td>${us.module}</td>
	</tr>
	
		<tr>
		<td>Email</td>
		<td>${us.email}</td>
	</tr>
	
	<tr>
		<td>Conducted Platform</td>
		<td>${us.platform}</td>
	</tr>
	
	<tr>
		<td>Available Days</td>
		<td>${us.day}</td>
	</tr>
	
	<tr>
		<td>Time Session</td>
		<td>${us.time}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	
	<c:url value="TUpdateAvailability.jsp" var="usupdate">
	
	<c:param name ="empId" value="${empId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="faculty" value="${faculty}"/>
	<c:param name ="module" value="${module}"/>
	<c:param name ="email" value="${email}"/>
	<c:param name ="platform" value="${platform}"/>
	<c:param name ="day" value="${day}"/>
	<c:param name ="time" value="${time}"/>
	</c:url>
	
	<a href = "${usupdate}">
	<input type="button" name="update" class="submit2" value="Update MY Availability Profile">
	</a><br>
	
	
	<c:url value="TDeleteAvailability.jsp" var="usdelete">
	
	<c:param name ="empId" value="${empId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="faculty" value="${faculty}"/>
	<c:param name ="module" value="${module}"/>
	<c:param name ="email" value="${email}"/>
	<c:param name ="platform" value="${platform}"/>
	<c:param name ="day" value="${day}"/>
	<c:param name ="time" value="${time}"/>
	</c:url>
	
	<a href = "${usdelete}">
	<input type="button" name="delete" class="submit3" value="Delete My Availability Profile">
	</a>

</body>
</html>